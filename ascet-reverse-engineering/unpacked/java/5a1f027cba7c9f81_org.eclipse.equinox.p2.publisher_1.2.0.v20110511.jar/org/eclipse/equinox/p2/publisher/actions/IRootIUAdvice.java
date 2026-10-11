/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.util.Collection;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IRootIUAdvice
extends IPublisherAdvice {
    public Collection<? extends Object> getChildren(IPublisherResult var1);
}

