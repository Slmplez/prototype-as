/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ITreeItemContentProvider
extends IStructuredItemContentProvider {
    public Collection<?> getChildren(Object var1);

    public boolean hasChildren(Object var1);

    public Object getParent(Object var1);
}

