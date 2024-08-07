{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div class="container" style="background-color: #353535">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>



{* 
<div class="footer-container" style="background-color: #353535">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>*}
<div class="footer-container" style="background-color: #353535">
  <div class="container">
    <div class="col-md-6" style="color: white; font-size: 11px;">
      <div>Ouvert de 8h15 à 18h</div>
      <div>05 46 66 76 26 Service & appel gratuits</div>
      <div>contact@agricolors.fr</div>
      <div><span style="font-weight: bold;">AGRISHOP SAS</span> - RD 939, La Rochelle - France</div>
      <img src="https://www.agricolors.fr/img/cms/logo-serco-blanc.jpg" />
      <div>Une entreprise du Groupe SERCO France</div>
    </div>
    <div class="col-md-6">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>






<div class='container-fluid' style='background-color: red;'>
    <p class="text-sm-center pt-1 text-white" style="font-size: 13px; font-weight: bold;">
      {block name='copyright_link'}
        © 2015 - 2024 Agricolors.fr
      {/block}
    </p>
</div>