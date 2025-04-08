<x-layout-backend>
    <!-- CONTENT -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Chi tiết món ăn</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/')}}">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Món ăn</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-12 text-right">
                        <a href="{{ route('admin.product.edit', $product->id) }}" class="btn btn-sm btn-primary">
                            <i class="far fa-edit"></i> Sửa
                        </a>
                        <a href="{{ route('admin.product.delete', $product->id) }}" class="btn btn-sm btn-danger"
                           onclick="return confirm('Bạn có chắc muốn xóa?')">
                            <i class="fas fa-trash"></i> Xóa
                        </a>
                        <a href="{{ route('admin.product.index') }}" class="btn btn-sm btn-info">
                            <i class="fa fa-arrow-left"></i> Về danh sách
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th class="text-center" style="width:30%;">
                                <strong>Tên trường</strong>
                            </th>
                            <th class="text-center" style="width:70%;">Giá trị</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>ID</td>
                            <td>{{ $product->id }}</td>
                        </tr>
                        <tr>
                            <td>Tên post</td>
                            <td>{{ $product->name }}</td>
                        </tr>
                        <tr>
                            <td>Hình ảnh</td>
                            <td>
                                <img src="{{ asset('images/product/' . $product->image) }}" alt="product Image" style="max-width: 200px;">
                            </td>
                        </tr>
                        <tr>
                            <td>Slug</td>
                            <td>{{ $product->slug }}</td>
                        </tr>
                        <tr>
                            <td>Thương hiệu</td>
                            <td>{{ $product->brand_id}}</td>
                        </tr>
                        <tr>
                            <td>Danh mục</td>
                            <td>{{ $product->category_id }}</td>
                        </tr>
                        <tr>
                            <td>Mô tả</td>
                            <td>{{ $product->description }}</td>
                        </tr>
                        <tr>
                            <td>Nội dung</td>
                            <td>{!! $product->content !!}</td>
                        </tr>
                        
                        <tr>
                            <td>Created By</td>
                            <td>{{ $product->created_by }}</td>
                        </tr>
                        <tr>
                            <td>Created At</td>
                            <td>{{ $product->created_at }}</td>
                        </tr>
                        <tr>
                            <td>Updated By</td>
                            <td>{{ $product->updated_by }}</td>
                        </tr>
                        <tr>
                            <td>Updated At</td>
                            <td>{{ $product->updated_at }}</td>
                        </tr>
                        <tr>
                            <td>Loại hình</td>
                            <td>{{ $product->new_p == 1 ? 'Sản phẩm mới' : 'None' }}</td>
                        </tr>
                        <tr>
                            <td>Trạng thái</td>
                            <td>{{ $product->status == 1 ? 'Hiển thị' : 'Không hiển thị' }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <!-- /.CONTENT -->
</x-layout-backend>