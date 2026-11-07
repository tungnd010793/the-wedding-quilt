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

## Lần chạy 02 — nữ phản diện trẻ gợi cảm hơn (07/11/2026)

> [AI] Tác giả yêu cầu: "nữ trẻ phản diện mặt xinh hơn, body gợi cảm hơn và hay mặc đồ khoét sâu ở ngực". Claude áp dụng cho JORDYN (29) và MYA (24, thuộc phe ác ở Phần 1).
> - **Mặt:** thêm câu "exceptionally beautiful… (an exception to the everyday-people casting style)".
> - **Dáng:** đổi thành đồng hồ cát (ngực đầy, eo thon, hông nở).
> - **Trang phục:** JO1–JO5, JO1B, MY1, MY2 chuyển sang cổ chữ V khoét sâu, ôm dáng. Màu và chất liệu giữ như kịch bản. JO2 thêm dáng đuôi cá, xẻ tà cao. MY1 đổi thành áo khoác lửng mở khoá, bên trong là áo bralette hở eo.
> - **Giữ nguyên:** JO6 (đồ tù) và MY3 (Mya đã đổi phe ở Phần 2).
> - **Đồng bộ chữ:** đã sửa câu tả trang phục tương ứng trong `03`, `04` (cùng một chỗ sửa ở cả hai file, tổng 72 chỗ) và bảng trang phục của `04a`.
> - **Bản cũ:** `du_an.json` trước khi sửa được cất ở `anh/_du_an_truoc_goi_cam.json`. Ảnh cũ nằm ở `anh/_cu/`.

- **Công cụ:** như lần chạy 01. `--chi CHAR_JORDYN_FACE CHAR_MYA_FACE --lam-lai`, sau đó `--tien-to OUTFIT_JO OUTFIT_MY SHEET_JORDYN SHEET_MYA`. Nhật ký ở `anh/_log_goi_cam.txt`.
- **Kết quả:** tạo được 22/22 ảnh (2 ảnh mặt, 10 ảnh đồ, 10 bảng nhân vật), không ảnh nào bị chặn kiểm duyệt. Ảnh soát: `qc/QC_mat_JO_MY.jpg`, `qc/QC_sheet_JO_MY.jpg`.
- **Claude soát (gợi ý, tác giả quyết):**
  - Mặt Jordyn xinh hơn rõ và giữ ổn định qua 7 bảng.
  - Model đẩy vòng ngực khá quá tay. Nếu muốn tự nhiên hơn, hoặc sợ bị chặn khi gen video, có thể đổi "full bust" thành "a shapely bust".
  - Chỏm tóc nhọn giữa trán của Jordyn và khe cạo ở đuôi mày Mya không còn rõ.
  - Mặt Mya chưa thật sự xinh hơn ảnh cũ.
  - MY1 ra chất liệu bóng như da, kịch bản ghi đồ thể thao bóng, chấp nhận được.
- **Đánh giá & quyết định của tác giả:**

## Lần chạy 03 — toàn bộ trang phục + QC (07/11/2026)

> [AI] Tác giả yêu cầu: "tạo toàn bộ nhân vật với các trang phục, bối cảnh 4 panel, đạo cụ rồi qc". Ba câu hỏi trước tác giả chưa trả lời, nên Claude làm theo mặc định:
> - Giữ đôi mày giống Nolan của Graham.
> - Giữ nhẫn cưới của Ozella.
> - Chưa thêm 3 mã NO2N, JO4K, OZ1S.

- **Đợt 2 (09:18–10:16):** tạo được 102/105 ảnh (ảnh `OUTFIT_*` và bảng `SHEET_*` của mọi nhân vật). 3 ảnh hỏng vì một lần mất mạng (`getaddrinfo failed`): OUTFIT_DA5, SHEET_DANAE_DA5, SHEET_DANAE_DA5H. Đã chạy lại, đạt 3/3. Nhật ký ở `anh/_log_dot2.txt` và `_log_dot3.txt`.
- **QC:** 7 agent chấm song song theo thang LUAT_CHUNG, từ 7 điểm là đạt, gồm 70 bảng nhân vật, 47 bảng 4 góc và 30 đạo cụ. **Vòng 1 trượt 9 ảnh, sửa như sau:**
  - **SHEET_OZELLA_OZ5M, OZ7:** ô cận mặt bị đội khăn. Thêm vào câu trạng thái: "scarf ONLY in the RIGHT panel".
  - **SHEET_JORDYN_JO6:** mặt bị lệch sang người khác. Viết lại JO6 thành áo liền quần một mảnh, giữ nguyên mặt, da và dáng.
  - **SHEET_DANAE_DA3W:** vệt rượu trên trán trông như máu. Sửa thành mặt sạch, chỉ áo bị dây rượu.
  - **SHEET_DANAE_DA5H:** vết cắt nằm sai bên trán. Ghi rõ "HER RIGHT side = image LEFT".
  - **PROP_QUILT_FRAME, PROP_QUILT_IN_BAG:** các mảnh vải không khớp tấm chăn gốc. Viết prompt riêng ở `anh/_prompt_rieng.json`, lấy `PROP_WEDDING_QUILT` làm ảnh gốc (`anh/_goc_rieng.json`).
  - **ESTATE_GARAGE_BANG:** xe có logo, thiếu cột bê tông, vị trí cửa lệch giữa các ô. Bổ sung các ý này vào `the_gioi`.
- **Tạo lại thêm dù đã đạt:**
  - **FARM_TABLE_BANG và bản chạng vạng:** căn nhà khác với nhà ở `FARM_YARD`. Đổi sang prompt lấy `FARM_YARD_BANG` làm gốc.
  - **GRAHAM_CONDO_BANG:** đường chân trời giống New York. Sửa thành Atlanta.
- **Kết quả cuối:** **147/147 ảnh đạt.** Điểm 9: 30 ảnh, điểm 8: 94 ảnh, điểm 7: 23 ảnh. Báo cáo từng ảnh ở `qc/QC_ANH.md`, điểm đã ghi vào `anh/_trang_thai.json` (`qc_may`). Ảnh tổng hợp gồm `qc/QC_bang_nhan_vat_1.jpg`, `qc/QC_bang_nhan_vat_2.jpg`, `QC_boi_canh_1…4.jpg` và `QC_dao_cu.jpg`.
- **Lỗi nhẹ còn lại, tác giả nên xem:**
  - **Dấu riêng chưa hiện:** mẻ răng của Ozella, sẹo hàm của Nolan, chỏm tóc nhọn của Jordyn, khe mày của Mya, nốt ruồi dưới mắt Danae, sẹo má của Farris. Ảnh mặt gốc đã không có, nên các bảng vẫn nhất quán với nhau.
  - **Lệch bên:** sẹo đầu của Graham và lọn bạc của Okafor nằm ngược bên so với mô tả, nhưng nhất quán qua mọi ảnh.
  - **Dáng người:** Ozella cao và mảnh hơn "thấp chắc". Ray, Darnell và Banks gọn hơn mô tả.
  - **Kiểm duyệt:** JO2 xẻ ngực tới xương ức, hở nhiều hai bên, có thể bị chặn khi gen video.
  - **Xe:** sedan ở `RANCH_PORCH` khác chiếc sedan bạc ở `RANCH_DRIVEWAY`. Đuôi SUV ở `ESTATE_GARAGE` còn logo nhỏ.
  - **Bối cảnh:** khung ảnh lớn ở `RANCH_LIVING` lộ rõ một khuôn mặt. Bia mộ ở `FARM_GATE` có nét như chữ khắc mờ. Lối dốc ở `PARKING_GARAGE` mở ra trời sáng.
- **Đánh giá & quyết định của tác giả:**

## Lần chạy 04 — làm lại ảnh còn lỗi sau QC (07/11/2026)

> [AI] Tác giả yêu cầu: "những cái nào qc chưa đạt thì tạo lại ảnh". Sau lần chạy 03, cả 147 ảnh đều đạt (từ 7 điểm), nên Claude làm lại 22 ảnh 7 điểm còn lỗi nhìn thấy được, cộng 2 bảng biến thể phải làm lại theo bảng gốc. Câu sửa nằm trong `du_an.json`. Bản trước khi sửa được cất ở `anh/_du_an_truoc_sua3.json`.
> - **Bảng nhân vật:**
>   - DN1, RY1: thêm dáng đậm, mềm bụng.
>   - MO1–MO3: giữ đúng độ sâu da, nhấn tai nghe tai phải.
>   - MY1: đổi sang vải lì, khuyên vòng, mặt tròn, khe mày.
>   - RG2: hoa tai nút vàng.
>   - RG3: tóc bẹp một bên.
>   - RG4: chân tóc đen mọc lại.
>   - DA3J: lộ rõ cardigan hồng.
>   - NO1C: tay áo đẩy tới khuỷu, râu rậm, dây đồng hồ da.
>   - OZ5BW: thêm giọt mưa.
> - **Bảng 4 góc:**
>   - ESTATE_GARAGE: xe không logo.
>   - ESTATE_LAWN: bỏ dấu tròn.
>   - FARM_GATE và bản chạng vạng: bia mộ trơn.
>   - PARKING_GARAGE: dốc tối.
>   - PINES_HALL: tay vịn liền, hành lang rẽ.
>   - PROBATE_COURTROOM: cờ cuộn.
>   - RANCH_LIVING và bản rạng sáng: khung ảnh không thấy mặt, camera chuông cửa.
>   - RANCH_PORCH: sedan bạc đời 90, 3 bậc thềm.
> - **Không làm lại:**
>   - SHEET_JORDYN_JO2: váy khoét sâu đúng yêu cầu của tác giả.
>   - SHEET_DANAE_DA5H: vừa làm lại ở lần 03.

- **Công cụ:** `--chi <29 ảnh> --lam-lai --song-song 5 --bot-ai nhe`. Nhật ký ở `anh/_log_sua3.txt`.
- **Kết quả:** tạo được 29/29 ảnh trong 14:25–14:30 (5 luồng, không lỗi cổng). Bản cũ cất ở `anh/_cu/*_1107_14*.png`. Ảnh so sánh cũ/mới: `qc/QC_sua3_a…d.jpg`.
- **Chấm lại:** bản mới đều bằng hoặc tốt hơn bản cũ nên giữ cả. Tổng **147/147 đạt**: điểm 9 có 30 ảnh, điểm 8 có 108 ảnh, điểm 7 có 9 ảnh. Báo cáo từng ảnh ở `qc/QC_ANH.md`.
- **Lỗi sửa chưa ăn (ảnh vẫn ở mức 7):**
  - Tai nghe của Moses (MO1, MO3) quá nhỏ.
  - Chân tóc đen của Regina (RG4) chưa nổi rõ.
  - Giọt mưa trên mặt Ozella (OZ5BW) còn mờ.
  - Cờ ở PROBATE_COURTROOM vẫn bung, chưa cuộn.
  - Khung ảnh giữa kệ ở RANCH_LIVING (cả bản rạng sáng) vẫn thấy một khuôn mặt nhỏ.

  Có thể sửa từng ô bằng `tao_anh.py … sua-panel PANEL "câu sửa"`.
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
