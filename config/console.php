<?php

$config = [
    'id' => 'basic-console',
    'basePath' => dirname(__DIR__),
    // 设置目标语言为中文
    'language' => 'zh-CN',
    // 设置源语言为英语
    'sourceLanguage' => 'en-US',
    'bootstrap' => ['log'],
    'controllerNamespace' => 'v1\commands',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'log' => [
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/console_db.php'),
        //rbac权限管理
        'authManager' => require(__DIR__ . '/console_authManager.php')
    ],
    //模块相关配置
    'modules' => require(__DIR__ . '/console_modules.php'),
    //别名定义
    'aliases' => require(__DIR__ . '/console_aliases.php'),
    'params' => require __DIR__ . '/console_params.php',
    /*
    'controllerMap' => [
        'fixture' => [ // Fixture generation command line.
            'class' => 'yii\faker\FixtureController',
        ],
    ],
    */
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}

return $config;
