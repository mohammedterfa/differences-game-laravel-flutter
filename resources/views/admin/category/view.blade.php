<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            View Category
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">

                    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                        <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                            <div class="p-6 text-gray-900 dark:text-gray-100">
                                <div class="flex flex-col">
                                    <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                                        <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
                                            <div class="overflow-hidden">
                                                <table class="min-w-full">
                                                    <thead class="border-b">
                                                        <tr>
                                                            <th scope="col" class="text-sm font-medium text-gray-100 px-6 py-4 text-left">
                                                                #
                                                            </th>
                                                            <th scope="col" class="text-sm font-medium text-gray-100 px-6 py-4 text-left">
                                                                Name
                                                            </th>
                                                            <th scope="col" class="text-sm font-medium text-gray-100 px-6 py-4 text-left">
                                                                Image
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="border-b">
                                                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-100">
                                                                {{ $category->id }}
                                                            </td>
                                                            <td class="text-sm text-gray-100 font-light px-6 py-4 whitespace-nowrap">
                                                                {{ $category->name }}
                                                            </td>
                                                            <td class="text-sm text-gray-100 font-light px-6 py-4 whitespace-nowrap">
                                                                <img src="{{ asset($category->image) }}" width="200">
                                                            </td>
                                                        </tr>
                                                    </tbody>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>

