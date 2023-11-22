<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Create Level
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">

                    <form method="POST" action="{{ route('category.store') }}" enctype="multipart/form-data">@csrf
                        <div class="grid grid-cols-2 gap-4 mb-10">
                            <div>
                                <img class="h-auto max-w-1/2 rounded-lg" src="{{ asset($level->image) }}" >
                            </div>
                            <div>
                                <img class="h-auto max-w-1/2 rounded-lg" src="{{ asset($level->image2) }}" >
                            </div>
                        </div>

                        <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
                        <a href="{{ route('category.index') }}" class="text-white bg-yellow-700 hover:bg-yellow-800 focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-sm w-full sm:w-auto px-7 py-2.5 mx-2 text-center dark:bg-yellow-600 dark:hover:bg-yellow-700 dark:focus:ring-yellow-800">back</a>
                      </form>

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
