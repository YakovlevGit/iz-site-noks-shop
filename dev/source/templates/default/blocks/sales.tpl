{assign var=params value=[
    'parent'    => 21
    ,'where'    => [
        'template:!='   => 52
    ]
    ,'limit'    => 0
    ,'filter'    => [
        'issale'    => 1
    ]
    ,'sort'      => 'RAND()'
    ,'cached'   => true
]}

{processor action="web/catalog/getdata" ns='modcatalog' params=$params assign=result}

{if $result.success && $result.count > 0}
    <div class="block-sales">
        <div class="section__title">
            Товары со скидкой
        </div>
        <div class="section__content">

            <div id="swiper-sales" class="swiper-container swiper-content">
                <div class="swiper-wrapper">

                    {$r = $result.object|@shuffle}

                    {foreach $result.object as $object}
                        <div class="swiper-slide">
                            {include file="components/product/item.tpl" object=$object}
                        </div>
                    {/foreach}

                </div>

                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>

            <div class="center-align">
                <a href="{$modx->makeUrl(752)}" class="button-action" style="width:auto">Все предложения</a>
            </div>
        </div>
    </div>
{/if}