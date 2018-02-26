<template>
    <div style="position: relative">
        <div class="menu-navbar-fixed">
            <div class="my-container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <div class="menu-navbar">
                            <ul class="menu-navbar__list">
                                <li class="menu-navbar__item">
                                <a href="#"> Сандвичи </a> 
                                </li>
                                <li class="menu-navbar__item">
                                <a href="#"> Роллы  </a> 
                                </li>
                                <li class="menu-navbar__item">
                                <a href="#"> Картофель  </a> 
                                </li>
                                <li class="menu-navbar__item">
                                <a href="#"> Стартеры  </a> 
                                </li>
                                <li class="menu-navbar__item">
                                <a href="#"> Соусы  </a> 
                                </li>
                                <li class="menu-navbar__item">
                                <a href="#">  Напитки </a> 
                                </li>
                                <li class="menu-navbar__item">
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

        <div class="menu">
            <div class="my-container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <div class="menu__items">
                            <div class="menu-card">
                                <img src="" alt="" class="menu-card__img">
                                <p class="menu-card__name"> Картофель фри </p>
                                <p class="menu-card__price"> 50 ₽  </p>
                            </div>
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