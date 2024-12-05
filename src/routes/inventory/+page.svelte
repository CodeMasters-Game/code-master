<script lang="ts">
    import Header from '$lib/header/+page.svelte';

    // Sample data for shop items
    const shopItems = [
        { id: 1, name: 'Basic Sword', price: 100, description: 'A simple but reliable weapon' },
        { id: 2, name: 'Shield', price: 150, description: 'Provides basic protection' },
        { id: 3, name: 'Health Potion', price: 50, description: 'Restores 50 HP' },
        { id: 4, name: 'Magic Scroll', price: 200, description: 'Contains basic spells' },
        { id: 5, name: 'Leather Armor', price: 180, description: 'Light but effective armor' },
        { id: 6, name: 'Bow', price: 160, description: 'For ranged attacks' },
    ];

</script>

<div class="h-screen bg-gradient-to-b from-gray-900 to-black">
    <div class="w-full flex justify-center">
        <Header />
    </div>
    
    <div class="container mx-auto px-0 mt-8 w-screen h-screen">
       
            <!-- Shop Section -->
            <div class="bg-gray-800 rounded-lg p-4">
                <h2 class="text-2xl font-bold text-white mb-2">Shop</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    {#each shopItems as item}
                        <div class="bg-gray-700 rounded-lg p-2 hover:bg-gray-600 transition-colors">
                            <h3 class="text-xl font-semibold text-white">{item.name}</h3>
                            <p class="text-gray-300 text-sm mt-1">{item.description}</p>
                            <div class="flex justify-between items-center mt-2">
                                <span class="text-yellow-400">
                                    <img src="diamond.png" alt="Diamond" class="inline-block w-8 h-8 mt-[-5px]" />{item.price} coins
                                </span>
                               
                                <button class="bg-blue-500 hover:bg-blue-600 text-white px-3 py-1 rounded-md text-sm">
                                    Buy
                                </button>
                            </div>
                        </div>
                    {/each}
                </div>
            </div>
        </div>
    </div>
