{extends file="basepage.tpl"}

{block name=main}
    <div class="section container">

        <div class="row">
            <div class="col l9 push-l3">
                {snippet name="BreadCrumb@BreadCrumb"}
                <h1>{field name=pagetitle}</h1>

                <div class="section page__content row">

                    <div class="content-wrapper">
                        {field name=content}
                    </div>

                    <a href="#modal-callback" class="button-action modal-trigger col s8 m3 l3 margin20" onclick="yaCounter49093180.reachGoal('call');">
                        <i class="icon material-icons">phone</i>
                        Заказать звонок</a>
                    <a href="#modal-feedback" class="button-action modal-trigger col s8 m3 l3 margin20" onclick="yaCounter49093180.reachGoal('soob');">
                        <i class="icon material-icons">mail</i>
                        Написать</a>

                </div>

            </div>

            <div class="col l3 pull-l9">

                {block name=folder_menu}
                    {include file="components/menu/folder.tpl" parent=12 title="Полезные советы"}
                {/block}

            </div>
        </div>

    </div>

    {block name=aside}{/block}
{/block}