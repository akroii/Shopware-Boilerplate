{* Step box *}

{* @deprecated Block "frontend_register_modern_theme_steps" will be renamed in next major release *}
{* It will be renamed to "frontend_register_themeware_steps" *}
{block name='frontend_register_modern_theme_steps'}
    <div class="steps--container container">
        <div class="steps--content panel--body center">
            {block name='frontend_register_steps'}
                <ul class="steps--list">

                    {* ThemeWare new First Step - Shopping cart *}
                    {block name='frontend_register_steps_cart'}
                    <li class="steps--entry step--cart{if $sStepActive=='address'} is--active{/if}{if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                        <span class="icon">{s name="CheckoutStepNumber01"}1{/s}</span>
                        <span class="text"><span class="text--inner">{s name="CheckoutStepEinkaufswagenText"}Einkaufswagen{/s}</span> <i class="icon--check"></i></span>
                    </li>
                    {/block}

                    {* First Step - Address *}
                    {block name='frontend_register_steps_basket'}
                    <li class="steps--entry step--basket{if $sStepActive=='address'} is--active{/if}{if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                        <span class="icon">{s name="CheckoutStepNumber02"}2{/s}</span>
                        <span class="text"><span class="text--inner">{s name="CheckoutStepAddressText"}{/s}</span>{if $sStepActive=='paymentShipping'} <i class="icon--check"></i>{/if}{if $sStepActive=='finished'} <i class="icon--check"></i>{/if}</span>
                    </li>
                    {/block}

                    {* Second Step - Payment *}
                    {block name='frontend_register_steps_register'}
                    <li class="steps--entry step--register{if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                        <span class="icon">{s name="CheckoutStepNumber03"}3{/s}</span>
                        <span class="text"><span class="text--inner">{s name="CheckoutStepPaymentShippingText"}{/s}</span>{if $sStepActive=='finished'} <i class="icon--check"></i>{/if}</span>
                    </li>
                    {/block}

                    {* Third Step - Confirmation *}
                    {block name='frontend_register_steps_confirm'}
                    <li class="steps--entry step--confirm{if $sStepActive=='finished'} is--active{/if}">
                        <span class="icon">{s name="CheckoutStepNumber04"}4{/s}</span>
                        <span class="text"><span class="text--inner">{s name="CheckoutStepConfirmText"}{/s}</span></span>
                    </li>
                    {/block}

                </ul>
            {/block}
        </div>
    </div>
{/block}