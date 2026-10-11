/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IRegion;

public interface ILineTracker {
    public String[] getLegalLineDelimiters();

    public String getLineDelimiter(int var1) throws BadLocationException;

    public int computeNumberOfLines(String var1);

    public int getNumberOfLines();

    public int getNumberOfLines(int var1, int var2) throws BadLocationException;

    public int getLineOffset(int var1) throws BadLocationException;

    public int getLineLength(int var1) throws BadLocationException;

    public int getLineNumberOfOffset(int var1) throws BadLocationException;

    public IRegion getLineInformationOfOffset(int var1) throws BadLocationException;

    public IRegion getLineInformation(int var1) throws BadLocationException;

    public void replace(int var1, int var2, String var3) throws BadLocationException;

    public void set(String var1);
}

