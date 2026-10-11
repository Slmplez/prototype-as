/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Control;

public final class FormAttachment {
    public int numerator;
    public int denominator = 100;
    public int offset;
    public Control control;
    public int alignment;

    public FormAttachment() {
    }

    public FormAttachment(int numerator) {
        this(numerator, 100, 0);
    }

    public FormAttachment(int numerator, int offset) {
        this(numerator, 100, offset);
    }

    public FormAttachment(int numerator, int denominator, int offset) {
        if (denominator == 0) {
            SWT.error(7);
        }
        this.numerator = numerator;
        this.denominator = denominator;
        this.offset = offset;
    }

    public FormAttachment(Control control) {
        this(control, 0, -1);
    }

    public FormAttachment(Control control, int offset) {
        this(control, offset, -1);
    }

    public FormAttachment(Control control, int offset, int alignment) {
        this.control = control;
        this.offset = offset;
        this.alignment = alignment;
    }

    FormAttachment divide(int value) {
        return new FormAttachment(this.numerator, this.denominator * value, this.offset / value);
    }

    int gcd(int m, int n) {
        int temp;
        if ((m = Math.abs(m)) < (n = Math.abs(n))) {
            temp = m;
            m = n;
            n = temp;
        }
        while (n != 0) {
            temp = m;
            m = n;
            n = temp % n;
        }
        return m;
    }

    FormAttachment minus(FormAttachment attachment) {
        FormAttachment solution = new FormAttachment();
        solution.numerator = this.numerator * attachment.denominator - this.denominator * attachment.numerator;
        solution.denominator = this.denominator * attachment.denominator;
        int gcd = this.gcd(solution.denominator, solution.numerator);
        solution.numerator /= gcd;
        solution.denominator /= gcd;
        solution.offset = this.offset - attachment.offset;
        return solution;
    }

    FormAttachment minus(int value) {
        return new FormAttachment(this.numerator, this.denominator, this.offset - value);
    }

    FormAttachment plus(FormAttachment attachment) {
        FormAttachment solution = new FormAttachment();
        solution.numerator = this.numerator * attachment.denominator + this.denominator * attachment.numerator;
        solution.denominator = this.denominator * attachment.denominator;
        int gcd = this.gcd(solution.denominator, solution.numerator);
        solution.numerator /= gcd;
        solution.denominator /= gcd;
        solution.offset = this.offset + attachment.offset;
        return solution;
    }

    FormAttachment plus(int value) {
        return new FormAttachment(this.numerator, this.denominator, this.offset + value);
    }

    int solveX(int value) {
        if (this.denominator == 0) {
            SWT.error(7);
        }
        return this.numerator * value / this.denominator + this.offset;
    }

    int solveY(int value) {
        if (this.numerator == 0) {
            SWT.error(7);
        }
        return (value - this.offset) * this.denominator / this.numerator;
    }

    public String toString() {
        String string = this.control != null ? this.control.toString() : String.valueOf(this.numerator) + "/" + this.denominator;
        return "{y = (" + string + (this.offset >= 0 ? ")x + " + this.offset : ")x - " + -this.offset) + "}";
    }
}

