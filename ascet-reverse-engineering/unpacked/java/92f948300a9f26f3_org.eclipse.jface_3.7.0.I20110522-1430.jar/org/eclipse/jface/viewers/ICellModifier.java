/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

public interface ICellModifier {
    public boolean canModify(Object var1, String var2);

    public Object getValue(Object var1, String var2);

    public void modify(Object var1, String var2, Object var3);
}

