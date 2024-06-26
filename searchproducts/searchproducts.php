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
        $this->author = 'Votre Nom';
        $this->need_instance = 0;
        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Product List Module');
        $this->description = $this->l('Expose an endpoint to get a list of products.');

        $this->confirmUninstall = $this->l('Are you sure you want to uninstall this module?');
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
