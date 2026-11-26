# srs-sop-skills

Danh mục và bộ cài các skill SOP viết SRS & thiết kế (tiếng Việt). Mỗi skill là **một repo độc lập**, một dịch vụ ghép lỏng với hợp đồng giao tiếp riêng (`skill.json`); repo này chỉ **khoá phiên bản** các skill tương thích với nhau, như một tệp compose cho microservice.

> Vietnamese-language Claude skills for an SRS-writing SOP. Each skill lives in its own versioned repo; this repo pins a compatible set.

Bộ khoá hiện tại: **v1.1.0** — [`skills.lock.json`](skills.lock.json).

| Skill | Mã | Bước SOP | Loại | Phiên bản |
|---|---|---|---|---|
| [`srs-ag01-transcript-summary`](https://github.com/HaNguyen1409/srs-ag01-transcript-summary) | AG-01 | B3 | Agent Node | `2.0.0` |
| [`srs-ag02-requirement-extraction`](https://github.com/HaNguyen1409/srs-ag02-requirement-extraction) | AG-02 | B4 | Agent Node | `2.3.0` |
| [`srs-ag03-gap-analysis`](https://github.com/HaNguyen1409/srs-ag03-gap-analysis) | AG-03 | B6 | Agent Node | `2.2.1` |
| [`srs-ag04-competitor-research`](https://github.com/HaNguyen1409/srs-ag04-competitor-research) | AG-04 | B7 | Agent Node | `2.0.0` |
| [`srs-ag05-feature-matrix`](https://github.com/HaNguyen1409/srs-ag05-feature-matrix) | AG-05 | B8 | Agent Node | `2.0.0` |
| [`srs-ag06-business-model`](https://github.com/HaNguyen1409/srs-ag06-business-model) | AG-06 | B9 | Agent Node | `1.5.0` |
| [`srs-ag07-screen-flow-design`](https://github.com/HaNguyen1409/srs-ag07-screen-flow-design) | AG-07 | B12 | Agent Node | `1.0.0` |
| [`srs-ag08-prototype-builder`](https://github.com/HaNguyen1409/srs-ag08-prototype-builder) | AG-08 | B13 | Agent Node | `1.1.0` |
| [`srs-ag09-demo-feedback-triage`](https://github.com/HaNguyen1409/srs-ag09-demo-feedback-triage) | AG-09 | B17 | Agent Node | `1.0.0` |
| [`srs-ag10-functional-spec`](https://github.com/HaNguyen1409/srs-ag10-functional-spec) | AG-10 | B10, B18 | Agent Node | `1.0.0` |
| [`srs-ag11-nfr-spec`](https://github.com/HaNguyen1409/srs-ag11-nfr-spec) | AG-11 | B19 | Agent Node | `1.0.0` |
| [`srs-ag12-semantic-review`](https://github.com/HaNguyen1409/srs-ag12-semantic-review) | AG-12 | B22 | Agent Node | `1.1.0` |
| [`srs-ag13-architecture-design`](https://github.com/HaNguyen1409/srs-ag13-architecture-design) | AG-13 | B26 | Agent Node | `1.0.0` |
| [`srs-ag14-data-design`](https://github.com/HaNguyen1409/srs-ag14-data-design) | AG-14 | B11, B18, B27 | Agent Node | `1.0.0` |
| [`srs-ag15-api-interface-design`](https://github.com/HaNguyen1409/srs-ag15-api-interface-design) | AG-15 | B28 | Agent Node | `1.0.0` |
| [`srs-ag16-security-design`](https://github.com/HaNguyen1409/srs-ag16-security-design) | AG-16 | B29 | Agent Node | `1.0.0` |
| [`srs-agbp-bpmn-process`](https://github.com/HaNguyen1409/srs-agbp-bpmn-process) | AG-BP | B9a | Agent + Code Node | `1.3.0` |
| [`srs-agmt-functional-matrix`](https://github.com/HaNguyen1409/srs-agmt-functional-matrix) | AG-MT | B5a | Agent Node | `1.2.0` |
| [`srs-agtq-project-overview`](https://github.com/HaNguyen1409/srs-agtq-project-overview) | AG-TQ | B8a | Agent Node | `1.2.0` |
| [`srs-agui-ui-design-system`](https://github.com/HaNguyen1409/srs-agui-ui-design-system) | AG-UI | B12a, B13a | Agent + Code Node | `1.2.0` |
| [`srs-agyc-requirements-document`](https://github.com/HaNguyen1409/srs-agyc-requirements-document) | AG-YC | B6a | Agent Node | `1.2.0` |
| [`srs-notify-mail`](https://github.com/HaNguyen1409/srs-notify-mail) | AG-NOTIFY | — | Node dịch vụ | `1.0.0` |
| [`srs-sop-pipeline`](https://github.com/HaNguyen1409/srs-sop-pipeline) | ORCHESTRATOR | — | Bộ điều phối | `1.0.0` |

## Cài cả bộ cho Claude Code

```powershell
git clone https://github.com/HaNguyen1409/srs-sop-skills.git
.\srs-sop-skills\install.ps1            # clone/checkout đúng tag đã khoá vào ~/.claude/skills
.\srs-sop-skills\install.ps1 -Latest    # lấy nhánh main mới nhất của từng skill
```

```bash
./srs-sop-skills/install.sh              # macOS/Linux
```

Chỉ cần một vài skill: clone riêng repo đó (xem README từng repo). Skill AG-xx dùng độc lập được; `srs-sop-pipeline` là bộ điều phối ghép chúng thành quy trình.

## Phiên bản bộ khoá

MINOR tăng khi có skill đổi phiên bản; MAJOR tăng khi có skill tăng MAJOR (đổi hợp đồng). Mỗi skill có CHANGELOG riêng.

## Giấy phép

MIT. `srs-agui-ui-design-system` và `srs-agbp-bpmn-process` chứa thành phần upstream chưa rõ giấy phép — xem NOTICE.md trong từng repo.
