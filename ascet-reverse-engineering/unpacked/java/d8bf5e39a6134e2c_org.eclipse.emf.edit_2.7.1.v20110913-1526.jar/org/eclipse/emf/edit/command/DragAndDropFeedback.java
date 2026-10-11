/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DragAndDropFeedback {
    public static final int DROP_NONE = 0;
    public static final int DROP_COPY = 1;
    public static final int DROP_MOVE = 2;
    public static final int DROP_LINK = 4;
    public static final int FEEDBACK_NONE = 0;
    public static final int FEEDBACK_SELECT = 1;
    public static final int FEEDBACK_INSERT_BEFORE = 2;
    public static final int FEEDBACK_INSERT_AFTER = 4;

    public boolean validate(Object var1, float var2, int var3, int var4, Collection<?> var5);

    public int getFeedback();

    public int getOperation();
}

