<template>
    <div class="menu">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <div class="menu__navbar">
                        <ul class="menu__list">
                            <li class="menu__navbar_item">
                               <a href="#"> Сандвичи </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#"> Роллы  </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#"> Картофель  </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#"> Стартеры  </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#"> Соусы  </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#">  Напитки </a> 
                            </li>
                            <li class="menu__navbar_item">
                               <a href="#">  Десерты </a> 
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-5">
                    <div class="basket__container">
                        <div class="basket">
                            <a href="#" class="basket__btn"> Сделать заказ </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['items']
}
</script>

<style>

</style>


// <ul>
//             <li v-for="item in items" :key="item.id"> 
//                 {{ item.name }}
//             </li>
//         </ul>