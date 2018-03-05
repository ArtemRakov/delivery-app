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
                                <div class="basket__item" v-for="(value) in basket" :key="'kappa' + value.id"> 
                                     <!-- doing weird key so that key will not be the same as menu items -->
                                    <img src="../assets/images/minus-red.png" alt="" class="basket__img" @click="removeQuantity(value)">
                                    <p class="basket__quantity"> {{ value.quantity }} </p>
                                    <img src="../assets/images/plus-red.png" alt="" class="basket__img" @click="addQuantity(value)">
                                    <p class="basket__name"> {{ value.name }}  </p>
                                    <p class="basket__price"> {{ value.price }} ₽</p>
                                </div>
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
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in items" :key="item.id">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
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
    props: ['items'],
    data() {
        return {
            basket: []
        }
    },
    methods: {
        addItemToBusket(item) {
            var index = this.basket.findIndex(x => x.name === item.name);
            if (index === -1) {
                this.basket.push({id: item.id, name: item.name, price: item.price, quantity: 1 })
            }
            else {
                var found = this.basket.find( e => e.name === item.name )
                found.quantity += 1
            }
        },
        removeQuantity(item) {
            item.quantity -= 1
            if (item.quantity < 1) {
                var index = this.basket.indexOf(item)
                this.basket.splice(index, 1)
            }
        },

        addQuantity(item) {
            item.quantity += 1
        },

        getPic(url) {
            return '../assets/' + url + '.png';
        }
    }
}
</script>

<style>

</style>