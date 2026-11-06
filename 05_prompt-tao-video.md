# 05 — PROMPT TẠO HÌNH / VIDEO

> Ghi **mọi lần thử**, kể cả lần hỏng. Chuỗi *thử → chọn → sửa* chính là bằng chứng đóng góp sáng tạo: Nghị định 134/2026/NĐ-CP coi việc **thiết lập prompt, đánh giá, lựa chọn, chỉnh sửa kết quả** là đóng góp của con người.
> File kết quả đặt tên trùng **mã** của lần thử (vd `C01-03.mp4`) và lưu trong `09_media/ai-tao-ra/`.

**Tác phẩm:** THE_WEDDING_QUILT

## Bộ ảnh tham chiếu sản xuất — lần chạy 01 (07/11/2026)

> [AI] Tác giả yêu cầu: "tạo hình nhân vật (khác tạo hình các nhân vật của phim trước), bối cảnh 4 panel, đạo cụ". Claude dựng dự án ảnh theo khuôn của các phim trước (THE BLOCK CLUB, WHEN NOBODY'S WATCHING): skill `viet-kich-ban-drama-phuong-tay`, `scripts/tao_anh.py`, `che_do_anh: sheet`. Mô tả nhân vật, trang phục, 4 bức tường của từng bối cảnh và đạo cụ do Claude soạn từ `04_kich-ban-chinh-thuc.md` và `04a_thiet-ke.md`. Chỗ nào kịch bản có ghi thì giữ đúng như kịch bản; chỗ nào kịch bản để ngỏ thì Claude tự thêm và đã liệt kê để tác giả duyệt.

- **Dự án ảnh:** `09_media/xuong/du_an.json`, gồm 21 nhân vật, 70 mã trang phục (trong đó 15 mã trạng thái: ướt, còng tay, bỏ khăn…), 32 bối cảnh dựng thành 47 bảng 4 góc (32 bảng gốc và 15 bảng biến thể đêm, mưa, chạng vạng), cắt ra 188 panel, và 30 đạo cụ.
- **Chống trùng phim trước:** Claude đã đối chiếu với 1.218 nhân vật của khoảng 140 dự án cũ. Mỗi nhân vật có một dấu riêng chưa dùng ở vai cùng kiểu. Ví dụ: Ozella mẻ góc răng cửa, hai dái tai có lỗ xỏ để trống. Nolan có vết sẹo nhỏ không mọc râu ở quai hàm. Mya có khe cạo ở đuôi mày. Graham có sẹo lưỡi liềm trên da đầu.
- **Ghi chú để tác giả duyệt:** `09_media/xuong/_ghi_chu/` có ba file `nhan_vat_ghi_chu.md`, `boi_canh_ghi_chu.md` và `dao_cu_ghi_chu.md`. Mỗi file ghi dấu riêng của từng mục, chi tiết tự thêm và chỗ còn vướng. Hai file `_tao_nhan_vat.py` và `tao_boi_canh.py` dùng để dựng lại JSON.
- **Công cụ:** `tao_anh.py --du-an 09_media/xuong anh --song-song 3 --bot-ai nhe`, qua cổng Xưởng phim Bigup 1.0.23 (`XUONG_TOOL` = `D:\TUNGND\movies\DRAMA_GOI_LAM_VIEC_2026-10-28\bigup_xuong_phim_1.0.23`), model mặc định gpt-image-2.5. Bản gốc cổng trả về nằm ở `anh/_goc_ai/`, nhật ký ở `anh/_log_dot1.txt`.
- **Đợt 1 (07/11/2026, 04:58–05:49):** tạo đủ 98/98 ảnh qua 98 lần gọi cổng, gồm 21 ảnh mặt `CHAR_*_FACE`, 47 bảng `*_BANG` (đã tự cắt 188 panel) và 30 ảnh `PROP_*`.
- **Sửa lại:** ảnh `CHAR_OZELLA_FACE` lần đầu bị model làm sáng da, chỉ còn khoảng Monk 7–8. Claude đổi mô tả da thành "very deep dark umber skin… do not lighten" rồi tạo lại 1 lần, kết quả đạt Monk 9.
- **Đợt 2 (chưa chạy, chờ tác giả duyệt ảnh mặt):** 125 ảnh còn lại, gồm 55 ảnh `OUTFIT_*` và 70 bảng nhân vật 2 ô `SHEET_*`. Mọi bảng đều dựng từ ảnh mặt đã chốt.
- **Ảnh soát:** `09_media/xuong/qc/QC_mat.jpg`, `QC_boi_canh_1…4.jpg`, `QC_dao_cu.jpg`.
- **Claude soát (gợi ý, tác giả quyết):**
  - Bối cảnh và đạo cụ: đạt cả. Bố cục 4 hướng khớp với kịch bản, không có người, biển không có chữ.
  - Lỗi nhẹ: `PROP_DEFAULT_NOTICE` có logo ngân hàng với chữ mờ ở đầu thư. `PROP_SAGE_SQUARE` xanh lá hơn màu sage. `PROP_QUILT_FRAME` khung nhỏ hơn khung thêu đứng trong kịch bản. `RANCH_DRIVEWAY_BANG` để mặt đường ướt (hợp với sáng thứ Bảy sau trận mưa tối thứ Sáu).
  - Ảnh mặt: đúng tuổi và tông da theo kịch bản. Regina giữ tóc bob bạch kim như kịch bản ghi. Ảnh mặt Jordyn mặc áo hai dây khoét sâu, nhưng ô cận mặt của bảng nhân vật chỉ lấy đầu và cổ nên không ảnh hưởng. Các dấu nhỏ (mẻ răng của Ozella, sẹo hàm của Nolan) chưa thấy rõ ở ảnh mặt, cần soát lại ở bảng nhân vật.
- **Đánh giá & quyết định của tác giả:**

## Cảnh 1 — [tên cảnh]

### C01-01
- **Ngày:**
- **Công cụ / model:** [vd: Seedance 2.5] · **Gói:** [trả phí / miễn phí]
- **Thiết lập:** [tỷ lệ khung hình, thời lượng, seed, độ mạnh ảnh tham chiếu…]
- **Tư liệu đầu vào:** [file trong `09_media/tham-khao/`, do bạn tự làm hoặc có quyền dùng]
- **Prompt:**

```text

```

- **Kết quả:** `09_media/ai-tao-ra/C01-01.mp4`
- **Đánh giá & quyết định:** [Giữ / Bỏ / Sửa. Vì sao? Lần sau đổi gì?]

### C01-02
- **Ngày:**
- **Công cụ / model:** · **Gói:**
- **Thiết lập:**
- **Tư liệu đầu vào:**
- **Prompt:**

```text

```

- **Kết quả:** `09_media/ai-tao-ra/C01-02.mp4`
- **Đánh giá & quyết định:**
