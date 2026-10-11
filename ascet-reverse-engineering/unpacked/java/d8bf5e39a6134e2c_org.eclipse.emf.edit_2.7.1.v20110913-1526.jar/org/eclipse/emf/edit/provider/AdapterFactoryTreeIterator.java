/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 */
package org.eclipse.emf.edit.provider;

import java.util.Collections;
import java.util.Iterator;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdapterFactoryTreeIterator<E>
extends AbstractTreeIterator<E> {
    private static final long serialVersionUID = 1L;
    protected AdapterFactory adapterFactory;

    public AdapterFactoryTreeIterator(AdapterFactory adapterFactory, E object) {
        super(object);
        this.adapterFactory = adapterFactory;
    }

    public AdapterFactoryTreeIterator(AdapterFactory adapterFactory, Object object, boolean includeRoot) {
        super(object, includeRoot);
        this.adapterFactory = adapterFactory;
    }

    protected Iterator<E> getChildren(Object o) {
        ITreeItemContentProvider treeItemContentProvider = (ITreeItemContentProvider)this.adapterFactory.adapt(o, ITreeItemContentProvider.class);
        return treeItemContentProvider != null ? treeItemContentProvider.getChildren(o).iterator() : Collections.emptyList().iterator();
    }
}

