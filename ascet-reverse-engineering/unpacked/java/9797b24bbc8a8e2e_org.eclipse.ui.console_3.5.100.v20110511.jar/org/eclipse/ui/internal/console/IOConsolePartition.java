/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IOConsoleInputStream;
import org.eclipse.ui.console.IOConsoleOutputStream;

public class IOConsolePartition
implements ITypedRegion {
    public static final String OUTPUT_PARTITION_TYPE = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".io_console_output_partition_type";
    public static final String INPUT_PARTITION_TYPE = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".io_console_input_partition_type";
    private StringBuffer buffer;
    private String type;
    private int offset;
    private boolean readOnly;
    private IOConsoleOutputStream outputStream;
    private IOConsoleInputStream inputStream;
    private int length;

    public IOConsolePartition(IOConsoleOutputStream outputStream, int length) {
        this.outputStream = outputStream;
        this.length = length;
        this.type = OUTPUT_PARTITION_TYPE;
        this.readOnly = true;
    }

    public IOConsolePartition(IOConsoleInputStream inputStream, String text) {
        this.inputStream = inputStream;
        this.buffer = new StringBuffer(text);
        this.length = text.length();
        this.type = INPUT_PARTITION_TYPE;
        this.readOnly = false;
    }

    public void insert(String s, int insertOffset) {
        this.buffer.insert(insertOffset, s);
        this.length += s.length();
    }

    public void delete(int delOffset, int delLength) {
        this.buffer.delete(delOffset, delOffset + delLength);
        this.length -= delLength;
    }

    public String getType() {
        return this.type;
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getString() {
        return this.buffer.toString();
    }

    public StyleRange getStyleRange(int rangeOffset, int rangeLength) {
        return new StyleRange(rangeOffset, rangeLength, this.getColor(), null, this.getFontStyle());
    }

    private int getFontStyle() {
        if (this.type.equals(INPUT_PARTITION_TYPE)) {
            return this.inputStream.getFontStyle();
        }
        return this.outputStream.getFontStyle();
    }

    public Color getColor() {
        if (this.type.equals(INPUT_PARTITION_TYPE)) {
            return this.inputStream.getColor();
        }
        return this.outputStream.getColor();
    }

    public boolean isReadOnly() {
        return this.readOnly;
    }

    public void setReadOnly() {
        this.readOnly = true;
    }

    public void clearBuffer() {
        this.buffer.setLength(0);
    }

    IOConsoleOutputStream getStream() {
        return this.outputStream;
    }
}

