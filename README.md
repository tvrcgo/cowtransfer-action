
# CowTransfer

Upload files to cowtransfer

## Inputs

- `files`: files/directory to upload (required)
- `options`: cowtransfer options (option)

## Outputs

- `url`: download url of files

## Usage

```yaml
- name: Upload firmware to CowTransfer
  id: cowtransfer
  uses: tvrcgo/cowtransfer-action@master
  with:
    files: ${{ env.FIRMWARE_DIR }}
```
