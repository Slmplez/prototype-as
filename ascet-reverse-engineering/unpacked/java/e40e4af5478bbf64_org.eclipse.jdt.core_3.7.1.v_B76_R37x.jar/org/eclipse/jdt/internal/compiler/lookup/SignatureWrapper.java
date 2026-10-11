/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public class SignatureWrapper {
    public char[] signature;
    public int start;
    public int end;
    public int bracket;
    private boolean use15specifics;

    public SignatureWrapper(char[] signature, boolean use15specifics) {
        this.signature = signature;
        this.start = 0;
        this.bracket = -1;
        this.end = -1;
        this.use15specifics = use15specifics;
    }

    public SignatureWrapper(char[] signature) {
        this(signature, true);
    }

    public boolean atEnd() {
        return this.start < 0 || this.start >= this.signature.length;
    }

    public int computeEnd() {
        int index = this.start;
        while (this.signature[index] == '[') {
            ++index;
        }
        switch (this.signature[index]) {
            case 'L': 
            case 'T': {
                this.end = CharOperation.indexOf(';', this.signature, this.start);
                if (this.bracket <= this.start) {
                    this.bracket = CharOperation.indexOf('<', this.signature, this.start);
                }
                if (this.bracket > this.start && this.bracket < this.end) {
                    this.end = this.bracket;
                    break;
                }
                if (this.end != -1) break;
                this.end = this.signature.length + 1;
                break;
            }
            default: {
                this.end = this.start;
            }
        }
        if (this.use15specifics || this.end != this.bracket) {
            this.start = this.end + 1;
        } else {
            this.start = this.skipAngleContents(this.end) + 1;
            this.bracket = -1;
        }
        return this.end;
    }

    public int skipAngleContents(int i) {
        if (this.signature[i] != '<') {
            return i;
        }
        int depth = 0;
        int length = this.signature.length;
        ++i;
        while (i < length) {
            switch (this.signature[i]) {
                case '<': {
                    ++depth;
                    break;
                }
                case '>': {
                    if (--depth >= 0) break;
                    return i + 1;
                }
            }
            ++i;
        }
        return i;
    }

    public char[] nextWord() {
        this.end = CharOperation.indexOf(';', this.signature, this.start);
        if (this.bracket <= this.start) {
            this.bracket = CharOperation.indexOf('<', this.signature, this.start);
        }
        int dot = CharOperation.indexOf('.', this.signature, this.start);
        if (this.bracket > this.start && this.bracket < this.end) {
            this.end = this.bracket;
        }
        if (dot > this.start && dot < this.end) {
            this.end = dot;
        }
        this.start = this.end;
        return CharOperation.subarray(this.signature, this.start, this.start);
    }

    public String toString() {
        return String.valueOf(new String(this.signature)) + " @ " + this.start;
    }
}

