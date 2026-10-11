/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

public interface ITextEditorExtension3 {
    public static final InsertMode INSERT = new InsertMode();
    public static final InsertMode SMART_INSERT = new InsertMode();

    public InsertMode getInsertMode();

    public void setInsertMode(InsertMode var1);

    public void showChangeInformation(boolean var1);

    public boolean isChangeInformationShowing();

    public static class InsertMode {
        private InsertMode() {
        }
    }
}

