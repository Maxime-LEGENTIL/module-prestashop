<?php
if (!defined('_PS_VERSION_')) {
    exit;
}

class SearchProducts extends Module
{
    public function __construct()
    {
        $this->name = 'searchproducts';
        $this->tab = 'front_office_features';
        $this->version = '1.0.0';
        $this->author = 'Maxime LE GENTIL';
        $this->need_instance = 0;
        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Moteur de recherche de produits');
        $this->description = $this->l('Permet de lister les produits à l\'aide d\'un moteur de recherche sur le front office.');

        $this->confirmUninstall = $this->l('Êtes-vous sûr de vouloir supprimer le module ?');
    }

    public function install()
    {
        return parent::install();
    }

    public function uninstall()
    {
        return parent::uninstall();
    }
}
