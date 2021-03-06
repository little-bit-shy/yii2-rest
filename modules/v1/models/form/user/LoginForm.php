<?php
/**
 * Created by PhpStorm.
 * User: xuguozhi
 * Date: 2018/1/16
 * Time: 10:56
 */

namespace v1\models\form\user;

use v1\models\form\Model;
use v1\models\User;
use Yii;
use yii\web\HttpException;

/**
 * 表单模型
 * Class LoginForm
 * @package v1\models\form
 */
class LoginForm extends Model
{
    /** @var User $_user 保存用户数据容器，避免多次查询 */
    private static $_user = null;

    public $username;
    public $password;
    public $captcha;

    /**
     * 验证规则
     * @return array
     */
    public function rules()
    {
        return [
            [['username', 'password', 'captcha'], 'safe', 'on' => 'login'],
            [['username', 'password', 'captcha'], 'required', 'on' => 'login', 'message' => '{attribute}' . Yii::t('app\error', 'not null')],
            [['captcha'], 'captcha', 'captchaAction' => 'v1/site/captcha', 'on' => 'login'],
            [['username'], 'validateUsername', 'on' => 'login'],
            [['password'], 'validatePassword', 'on' => 'login'],
        ];
    }

    /**
     * 场景
     * @return array
     */
    public function scenarios()
    {
        return [
            'login' => [
                'username',
                'password',
                'captcha',
            ]
        ];
    }

    /**
     * 属性标签
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'username' => Yii::t('app\attribute', 'username'),
            'password' => Yii::t('app\attribute', 'password'),
            'captcha' => Yii::t('app\attribute', 'captcha'),
        ];
    }

    /**
     * 验证用户名是否合法
     * @param $attribute
     * @param $params
     * @throws \Exception
     * @throws \Throwable
     */
    public function validateUsername($attribute, $params)
    {
        $user = self::getUser($this->username);
        if (empty($user)) {
            $this->addError($attribute, Yii::t('app/error', 'the user does not exist'));
        }
    }

    /**
     * 验证用户密码是否合法
     * @param $attribute
     * @param $params
     * @throws \Exception
     * @throws \Throwable
     */
    public function validatePassword($attribute, $params)
    {
        $user = self::getUser($this->username);
        if (!empty($user) && !$user->validatePassword($this->password)) {
            $this->addError($attribute, Yii::t('app/error', 'user password error'));
        }
    }

    /***************************** 表单操作 *********************************/

    /**
     * 用户登录
     * @param $param
     * @return User
     * @throws HttpException
     * @throws \Exception
     * @throws \Throwable
     * @throws \yii\base\InvalidConfigException
     *
     *
     */
    public function login($param)
    {
        $loginForm = new LoginForm();
        $loginForm->setScenario('login');
        if ($loginForm->load([$loginForm->formName() => $param]) && $loginForm->validate()) {
            return User::login($loginForm->username);
        } else {
            throw new HttpException(422, $loginForm->getFirstError());
        }
    }

    /***************************** 获取数据 *********************************/

    /**
     * 通过用户名称获取用户信息
     * @param $username
     * @param bool $ignoreExistingData 无视容器已有的数据
     * @return User
     * @throws \Exception
     * @throws \Throwable
     */
    private function getUser($username, $ignoreExistingData = false)
    {
        if (empty(static::$_user) || $ignoreExistingData === true) {
            static::$_user = User::findIdentityByUsername($username);
        }
        return static::$_user;
    }
}