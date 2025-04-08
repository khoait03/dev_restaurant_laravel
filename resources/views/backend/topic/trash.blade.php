<x-layout-backend>
    <section class="content-header">
        <h1>Thùng rác</h1>
        <a href="{{ route('admin.topic.index') }}" class="btn btn-primary py-2 mt-2">Quay lại danh sách </a>
    </section>
    <section class="content">
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center" style="width:30px;">#</th>
                            <th>Tên chủ đề</th>
                            <th>Slug</th>
                            <th>Mô tả</th>
                            <th class="text-center" style="width:200px;">Chức năng</th>
                            <th class="text-center" style="width:30px;">ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($topics as $topic)
                            <tr>
                                <td class="text-center">
                                    <input type="checkbox" id="checkId" value="1" name="checkId[]">
                                </td>
                                
                                <td>{{ $topic->name }}</td>
                                <td>{{ $topic->slug }}</td>
                                <td>{{ $topic->description }}</td>
                                <td>
                                    <a href="{{ route('admin.topic.restore', ['topic' => $topic->id]) }}" class="bg-blue-600 hover:bg-blue-700  rounded px-4 py-2 inline-flex items-center space-x-2">
                                        <i class="fa-solid fa-arrow-rotate-left"></i>
                                        
                                    </a>
                                    <form action="{{ route('admin.topic.destroy', ['topic' => $topic->id]) }}" method="POST" class="inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="bg-red-600 hover:bg-red-700  rounded px-4 py-2 inline-flex items-center space-x-2">
                                            <i class="fa-solid fa-trash"></i>
                                            
                                        </button>
                                    </form>
                                </td>
                                
                                <td>{{ $topic->id }}</td>
                        

                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</x-layout-backend>
