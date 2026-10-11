/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.internal.image.LZWNode;

final class LZWCodec {
    int bitsPerPixel;
    int blockSize;
    int blockIndex;
    int currentByte;
    int bitsLeft;
    int codeSize;
    int clearCode;
    int endCode;
    int newCodes;
    int topSlot;
    int currentSlot;
    int imageWidth;
    int imageHeight;
    int imageX;
    int imageY;
    int pass;
    int line;
    int codeMask;
    byte[] block;
    byte[] lineArray;
    int[] stack;
    int[] suffix;
    int[] prefix;
    LZWNode[] nodeStack;
    LEDataInputStream inputStream;
    LEDataOutputStream outputStream;
    ImageData image;
    ImageLoader loader;
    boolean interlaced;
    static final int[] MASK_TABLE = new int[]{1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095};

    LZWCodec() {
    }

    void decode() {
        int c;
        int oc = 0;
        int fc = 0;
        byte[] buf = new byte[this.imageWidth];
        int stackIndex = 0;
        int bufIndex = 0;
        while ((c = this.nextCode()) != this.endCode) {
            if (c == this.clearCode) {
                this.codeSize = this.bitsPerPixel + 1;
                this.codeMask = MASK_TABLE[this.bitsPerPixel];
                this.currentSlot = this.newCodes;
                this.topSlot = 1 << this.codeSize;
                while ((c = this.nextCode()) == this.clearCode) {
                }
                if (c == this.endCode) continue;
                oc = fc = c;
                buf[bufIndex] = (byte)c;
                if (++bufIndex != this.imageWidth) continue;
                this.nextPutPixels(buf);
                bufIndex = 0;
                continue;
            }
            int code = c;
            if (code >= this.currentSlot) {
                code = oc;
                this.stack[stackIndex] = fc;
                ++stackIndex;
            }
            while (code >= this.newCodes) {
                this.stack[stackIndex] = this.suffix[code];
                ++stackIndex;
                code = this.prefix[code];
            }
            this.stack[stackIndex] = code;
            ++stackIndex;
            if (this.currentSlot < this.topSlot) {
                this.suffix[this.currentSlot] = fc = code;
                this.prefix[this.currentSlot] = oc;
                ++this.currentSlot;
                oc = c;
            }
            if (this.currentSlot >= this.topSlot && this.codeSize < 12) {
                this.codeMask = MASK_TABLE[this.codeSize];
                ++this.codeSize;
                this.topSlot += this.topSlot;
            }
            while (stackIndex > 0) {
                buf[bufIndex] = (byte)this.stack[--stackIndex];
                if (++bufIndex != this.imageWidth) continue;
                this.nextPutPixels(buf);
                bufIndex = 0;
            }
        }
        if (bufIndex != 0 && this.line < this.imageHeight) {
            this.nextPutPixels(buf);
        }
    }

    public void decode(LEDataInputStream inputStream, ImageLoader loader, ImageData image, boolean interlaced, int depth) {
        this.inputStream = inputStream;
        this.loader = loader;
        this.image = image;
        this.interlaced = interlaced;
        this.bitsPerPixel = depth;
        this.initializeForDecoding();
        this.decode();
    }

    void encode() {
        this.nextPutCode(this.clearCode);
        int lastPrefix = this.encodeLoop();
        this.nextPutCode(lastPrefix);
        this.nextPutCode(this.endCode);
        this.block[0] = this.bitsLeft == 8 ? (byte)(this.blockIndex - 1) : (byte)this.blockIndex;
        this.writeBlock();
        if (this.block[0] != 0) {
            this.block[0] = 0;
            this.writeBlock();
        }
    }

    public void encode(LEDataOutputStream byteStream, ImageData image) {
        this.outputStream = byteStream;
        this.image = image;
        this.initializeForEncoding();
        this.encode();
    }

    /*
     * Unable to fully structure code
     */
    int encodeLoop() {
        pixel = this.nextPixel();
        while (true) {
            currentPrefix = pixel;
            node = this.nodeStack[currentPrefix];
            found = true;
            pixel = this.nextPixel();
            if (pixel >= 0) ** GOTO lbl27
            return currentPrefix;
lbl-1000:
            // 1 sources

            {
                node = node.children;
                while (found && node.suffix != pixel) {
                    if (pixel < node.suffix) {
                        if (node.left == null) {
                            node.left = new LZWNode();
                            found = false;
                        }
                        node = node.left;
                        continue;
                    }
                    if (node.right == null) {
                        node.right = new LZWNode();
                        found = false;
                    }
                    node = node.right;
                }
                if (!found) continue;
                currentPrefix = node.code;
                pixel = this.nextPixel();
                if (pixel >= 0) continue;
                return currentPrefix;
lbl27:
                // 3 sources

                ** while (found && node.children != null)
            }
lbl28:
            // 1 sources

            if (found) {
                node = node.children = new LZWNode();
            }
            node.children = null;
            node.left = null;
            node.right = null;
            node.code = this.currentSlot++;
            node.prefix = currentPrefix;
            node.suffix = pixel;
            this.nextPutCode(currentPrefix);
            if (this.currentSlot < 4096) {
                if (this.currentSlot <= this.topSlot) continue;
                ++this.codeSize;
                this.codeMask = LZWCodec.MASK_TABLE[this.codeSize - 1];
                this.topSlot *= 2;
                continue;
            }
            this.nextPutCode(this.clearCode);
            i = 0;
            while (i < this.nodeStack.length) {
                this.nodeStack[i].children = null;
                ++i;
            }
            this.codeSize = this.bitsPerPixel + 1;
            this.codeMask = LZWCodec.MASK_TABLE[this.codeSize - 1];
            this.currentSlot = this.newCodes;
            this.topSlot = 1 << this.codeSize;
        }
    }

    void initializeForDecoding() {
        this.pass = 1;
        this.line = 0;
        this.codeSize = this.bitsPerPixel + 1;
        this.topSlot = 1 << this.codeSize;
        this.clearCode = 1 << this.bitsPerPixel;
        this.endCode = this.clearCode + 1;
        this.newCodes = this.currentSlot = this.endCode + 1;
        this.currentByte = -1;
        this.bitsLeft = 0;
        this.blockSize = 0;
        this.blockIndex = 0;
        this.codeMask = MASK_TABLE[this.codeSize - 1];
        this.stack = new int[4096];
        this.suffix = new int[4096];
        this.prefix = new int[4096];
        this.block = new byte[256];
        this.imageWidth = this.image.width;
        this.imageHeight = this.image.height;
    }

    void initializeForEncoding() {
        this.interlaced = false;
        this.bitsPerPixel = this.image.depth;
        this.codeSize = this.bitsPerPixel + 1;
        this.topSlot = 1 << this.codeSize;
        this.clearCode = 1 << this.bitsPerPixel;
        this.endCode = this.clearCode + 1;
        this.newCodes = this.currentSlot = this.endCode + 1;
        this.bitsLeft = 8;
        this.currentByte = 0;
        this.blockIndex = 1;
        this.blockSize = 255;
        this.block = new byte[this.blockSize];
        this.block[0] = (byte)(this.blockSize - 1);
        this.nodeStack = new LZWNode[1 << this.bitsPerPixel];
        int i = 0;
        while (i < this.nodeStack.length) {
            LZWNode node = new LZWNode();
            node.code = i + 1;
            node.prefix = -1;
            node.suffix = i + 1;
            this.nodeStack[i] = node;
            ++i;
        }
        this.imageWidth = this.image.width;
        this.imageHeight = this.image.height;
        this.imageY = -1;
        this.lineArray = new byte[this.imageWidth];
        this.imageX = this.imageWidth + 1;
    }

    int nextCode() {
        int code;
        if (this.bitsLeft == 0) {
            if (this.blockIndex >= this.blockSize) {
                this.blockSize = this.readBlock();
                this.blockIndex = 0;
                if (this.blockSize == 0) {
                    return this.endCode;
                }
            }
            ++this.blockIndex;
            this.currentByte = this.block[this.blockIndex] & 0xFF;
            this.bitsLeft = 8;
            code = this.currentByte;
        } else {
            int shift = this.bitsLeft - 8;
            code = shift < 0 ? this.currentByte >> 0 - shift : this.currentByte << shift;
        }
        while (this.codeSize > this.bitsLeft) {
            if (this.blockIndex >= this.blockSize) {
                this.blockSize = this.readBlock();
                this.blockIndex = 0;
                if (this.blockSize == 0) {
                    return this.endCode;
                }
            }
            ++this.blockIndex;
            this.currentByte = this.block[this.blockIndex] & 0xFF;
            code += this.currentByte << this.bitsLeft;
            this.bitsLeft += 8;
        }
        this.bitsLeft -= this.codeSize;
        return code & this.codeMask;
    }

    int nextPixel() {
        ++this.imageX;
        if (this.imageX > this.imageWidth) {
            ++this.imageY;
            if (this.imageY >= this.imageHeight) {
                return -1;
            }
            this.nextPixels(this.lineArray, this.imageWidth);
            this.imageX = 1;
        }
        return this.lineArray[this.imageX - 1] & 0xFF;
    }

    void nextPixels(byte[] buf, int lineWidth) {
        if (this.image.depth == 8) {
            System.arraycopy(this.image.data, this.imageY * this.image.bytesPerLine, buf, 0, lineWidth);
        } else {
            this.image.getPixels(0, this.imageY, lineWidth, buf, 0);
        }
    }

    void nextPutCode(int aCode) {
        int codeToDo = aCode;
        int codeBitsToDo = this.codeSize;
        int c = codeToDo & MASK_TABLE[this.bitsLeft - 1];
        this.currentByte |= c << 8 - this.bitsLeft;
        this.block[this.blockIndex] = (byte)this.currentByte;
        if ((codeBitsToDo -= this.bitsLeft) < 1) {
            this.bitsLeft -= this.codeSize;
            if (this.bitsLeft == 0) {
                this.bitsLeft = 8;
                ++this.blockIndex;
                if (this.blockIndex >= this.blockSize) {
                    this.writeBlock();
                    this.blockIndex = 1;
                }
                this.currentByte = 0;
            }
            return;
        }
        codeToDo >>= this.bitsLeft;
        ++this.blockIndex;
        if (this.blockIndex >= this.blockSize) {
            this.writeBlock();
            this.blockIndex = 1;
        }
        while (codeBitsToDo >= 8) {
            this.currentByte = codeToDo & 0xFF;
            this.block[this.blockIndex] = (byte)this.currentByte;
            codeToDo >>= 8;
            codeBitsToDo -= 8;
            ++this.blockIndex;
            if (this.blockIndex < this.blockSize) continue;
            this.writeBlock();
            this.blockIndex = 1;
        }
        this.bitsLeft = 8 - codeBitsToDo;
        this.currentByte = codeToDo;
        this.block[this.blockIndex] = (byte)this.currentByte;
    }

    void nextPutPixels(byte[] buf) {
        if (this.image.depth == 8) {
            int start = this.line * this.image.bytesPerLine;
            int i = 0;
            while (i < this.imageWidth) {
                this.image.data[start + i] = buf[i];
                ++i;
            }
        } else {
            this.image.setPixels(0, this.line, this.imageWidth, buf, 0);
        }
        if (this.interlaced) {
            if (this.pass == 1) {
                this.copyRow(buf, 7);
                this.line += 8;
            } else if (this.pass == 2) {
                this.copyRow(buf, 3);
                this.line += 8;
            } else if (this.pass == 3) {
                this.copyRow(buf, 1);
                this.line += 4;
            } else if (this.pass == 4) {
                this.line += 2;
            } else if (this.pass == 5) {
                this.line += 0;
            }
            if (this.line >= this.imageHeight) {
                ++this.pass;
                if (this.pass == 2) {
                    this.line = 4;
                } else if (this.pass == 3) {
                    this.line = 2;
                } else if (this.pass == 4) {
                    this.line = 1;
                } else if (this.pass == 5) {
                    this.line = 0;
                }
                if (this.pass < 5 && this.loader.hasListeners()) {
                    ImageData imageCopy = (ImageData)this.image.clone();
                    this.loader.notifyListeners(new ImageLoaderEvent(this.loader, imageCopy, this.pass - 2, false));
                }
            }
            if (this.line >= this.imageHeight) {
                this.line = 0;
            }
        } else {
            ++this.line;
        }
    }

    void copyRow(byte[] buf, int copies) {
        int i = 1;
        while (i <= copies) {
            if (this.line + i < this.imageHeight) {
                this.image.setPixels(0, this.line + i, this.imageWidth, buf, 0);
            }
            ++i;
        }
    }

    int readBlock() {
        int size = -1;
        try {
            size = this.inputStream.read();
            if (size == -1) {
                SWT.error(40);
            }
            this.block[0] = (byte)size;
            if ((size = this.inputStream.read(this.block, 1, size)) == -1) {
                SWT.error(40);
            }
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
        return size;
    }

    void writeBlock() {
        try {
            this.outputStream.write(this.block, 0, (this.block[0] & 0xFF) + 1);
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
    }
}

