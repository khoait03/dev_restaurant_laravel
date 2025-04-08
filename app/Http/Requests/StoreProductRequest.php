<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'slug' => 'required|string|max:255|unique:product,slug',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            'category_id' => 'required|exists:category,id',
            'brand_id' => 'required|exists:brand,id',
            'qty' => 'required|integer|min:1',
            'price_buy' => 'required|numeric|min:0',
            'price_sale' => 'required|numeric|min:0|lt:price_buy',
        ];
    }

    /**
     * Custom error messages for validation rules.
     *
     * @return array<string, string>
     */
    public function messages(): array
    {
        return [
            'name.required' => 'Tên món ăn bắt buộc phải nhập.',
            'slug.required' => 'Slug không được để trống.',
            'slug.unique' => 'Slug đã tồn tại, vui lòng chọn slug khác.',
            'image.required' => 'Vui lòng chọn một hình ảnh.',
            'image.image' => 'Tệp tải lên phải là một hình ảnh.',
            'image.mimes' => 'Hình ảnh phải thuộc các định dạng: jpeg, png, jpg, gif, webp.',
            'image.max' => 'Dung lượng hình ảnh không được vượt quá 2MB.',
            'category_id.required' => 'Danh mục sản phẩm không được để trống.',
            'category_id.exists' => 'Danh mục không hợp lệ.',
            'brand_id.required' => 'Thương hiệu không được để trống.',
            'brand_id.exists' => 'Thương hiệu không hợp lệ.',
            'qty.required' => 'Số lượng sản phẩm là bắt buộc.',
            'qty.integer' => 'Số lượng phải là số nguyên.',
            'qty.min' => 'Số lượng phải lớn hơn 0.',
            'price_buy.required' => 'Giá gốc bắt buộc phải nhập.',
            'price_buy.numeric' => 'Giá gốc phải là số.',
            'price_buy.min' => 'Giá gốc không được âm.',
            'price_sale.required' => 'Giá khuyến mãi bắt buộc phải nhập.',
            'price_sale.numeric' => 'Giá khuyến mãi phải là số.',
            'price_sale.min' => 'Giá khuyến mãi không được âm.',
            'price_sale.lt' => 'Giá khuyến mãi phải nhỏ hơn giá gốc.',
        ];
    }
}
