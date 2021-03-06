{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{include file="$tpl_dir./header-page.tpl"}

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{capture name=path}<a href="order.php">{l s='Your shopping cart' mod='paypal'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='PayPal' mod='paypal'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<form action="{$form_action}" method="post" data-ajax="false">
	<p>
		<img src="{$logos.LocalPayPalLogoMedium}" alt="{l s='PayPal' mod='paypal'}" style="margin-bottom: 10px" />
		<br />{l s='You have chosen to pay with PayPal.' mod='paypal'}
		<br/><br />
	{l s='Here is a short summary of your order:' mod='paypal'}
	</p>
	<p style="margin-top:20px;">
		- {l s='The total amount of your order is' mod='paypal'}
		<span id="amount" class="price"><strong>{convertPrice price=$total}</strong></span> {if $use_taxes == 1}{l s='(tax incl.)' mod='paypal'}{/if}
	</p>
	<p style="margin-top:10px;">
		- {l s='We accept the following currency to be sent by PayPal:' mod='paypal'}&nbsp;<b>{$currency->name}</b>
	</p>
	<p style="margin-top:20px;">
		<b>{l s='Please confirm your order by clicking \'I confirm my order\'' mod='paypal'}.</b>
	</p>
	<p class="cart_navigation submit" style="text-align: center; margin-top: 10px;">
		<input data-icon="check" data-mini="true" data-iconpos="right" data-theme="{$ps_mobile_styles.PS_MOBILE_THEME_BUTTONS}" data-inline="true" type="submit" name="confirmation" value="{l s='I confirm my order' mod='paypal'}" class="exclusive_large" />
	</p>
</form>

{include file="$tpl_dir./footer-page.tpl"}