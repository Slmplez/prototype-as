/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.util.Collection;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IRootIUAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RootIUAdvice
extends AbstractAdvice
implements IRootIUAdvice {
    private Collection<? extends Object> children;

    public RootIUAdvice(Collection<? extends Object> children) {
        this.children = children;
    }

    @Override
    public Collection<? extends Object> getChildren(IPublisherResult result) {
        return this.children;
    }
}

