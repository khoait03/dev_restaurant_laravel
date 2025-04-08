
<section class="gallery-area">
    <div class="gallery-top bg-cover bg-center py-20 "
        style="background-image: url('assets/img/gallery/section_bg01.png');">
        <div class="container mx-auto text-center">
            <div class="mb-10">
                <p class="text-orange-500 font-semibold text-lg mb-4">Thực đơn</p>
                <h2 class="text-3xl font-bold">
                    Một số món ăn phổ biến theo thực đơn của nhà hàng
                </h2>
            </div>
            <div>
                <div class="flex justify-center space-x-4">
                    @foreach ($categories as  $categoryitem)
                    <button class="tab-btn text-sm py-2 px-4 bg-orange-500 text-white rounded-lg"
                        data-tab="{{$categoryitem->id}}">{{$categoryitem->name}}</button> 
                        @endforeach
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto">
        @foreach ($categories as $categoryitem)
        <div id="{{$categoryitem->id}}" 
             class="tab-content grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-4 
             {{ $categoryitem->id == 2 ? 'active' : 'hidden' }}">
            <x-home-product-category :categoryitem="$categoryitem" />
        </div>
        @endforeach
    </div>
    
</section>

