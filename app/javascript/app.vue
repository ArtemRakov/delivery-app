<template>
    <div style="position: relative">
        <div class="menu-navbar-fixed">
            <div class="my-container">
                <div class="row">
                    <div class="col-md-8">
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

                    <div class="col-md-4">
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
            <div class="my-container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="menu__category">
                            <h4 class="menu__category-text"> Сандвичи </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" v-for="item in items" :key="item.id">
                                <img :src="item.photo" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
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