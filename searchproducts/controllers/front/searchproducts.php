<?php
class SearchproductsSearchproductsModuleFrontController extends ModuleFrontController
{
    public function initContent()
    {
        parent::initContent();

        header('Content-Type: application/json');

        $products = $this->getProductList();
        die(json_encode(array('products' => $products)));
    }

    private function getProductList()
    {
        $sql = new DbQuery();
        $sql->select('p.id_product, pl.name, p.price');
        $sql->from('product', 'p');
        $sql->leftJoin('product_lang', 'pl', 'p.id_product = pl.id_product');
        $sql->where('pl.id_lang = ' . (int)$this->context->language->id);
        $sql->where('p.active = 1');
        $sql->limit(50); // Limiter à 50 produits pour des raisons de performance

        return Db::getInstance()->executeS($sql);
    }
}
