<div class="card box-blog">
    <a href="{$object.uri}">
        <div class="card-image">
            {if {$object.tvs.blockimage.value}}
                {snippet name="pThumb" params=[
                "input" => $object.tvs.blockimage.value
                ,"options" => "&w=263&h=190&zc=1&aoe=0&far=0&q=70"
                ] assign=thumbImage}
                {else}
            {snippet name="pThumb" params=[
            "input" => $object.tvs.image.value
            ,"options" => "&w=263&h=190&zc=1&aoe=0&far=0&q=70"
            ] assign=thumbImage}
            {/if}
            <img class="actionimg" src="{$thumbImage}">
        </div>
    </a>
</div>