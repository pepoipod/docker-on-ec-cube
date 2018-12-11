<?php


namespace Eccube\Composer;


use Composer\Composer;
use Composer\IO\IOInterface;
use Composer\Plugin\PluginInterface;

class EccubePluginInstallerPlugin implements PluginInterface
{
    const TYPE = 'eccube-plugin';

    public function activate(Composer $composer, IOInterface $io)
    {
        $installer = new PluginInstaller($io, $composer, self::TYPE);
        $composer->getInstallationManager()->addInstaller($installer);
    }
}