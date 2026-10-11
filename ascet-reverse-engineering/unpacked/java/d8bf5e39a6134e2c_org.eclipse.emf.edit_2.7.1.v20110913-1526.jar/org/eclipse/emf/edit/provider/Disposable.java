/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.HashSet;
import org.eclipse.emf.edit.provider.IDisposable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Disposable
extends HashSet<Object>
implements IDisposable {
    private static final long serialVersionUID = 1L;

    public Disposable() {
    }

    public Disposable(Collection<?> disposables) {
        super(disposables);
    }

    @Override
    public void dispose() {
        for (Object object : this) {
            IDisposable disposable = (IDisposable)object;
            disposable.dispose();
        }
        this.clear();
    }

    @Override
    public boolean add(Object object) {
        if (object instanceof IDisposable) {
            return super.add(object);
        }
        return false;
    }

    @Override
    public boolean addAll(Collection<?> collection) {
        boolean result = false;
        for (Object object : collection) {
            if (!this.add(object)) continue;
            result = true;
        }
        return result;
    }
}

