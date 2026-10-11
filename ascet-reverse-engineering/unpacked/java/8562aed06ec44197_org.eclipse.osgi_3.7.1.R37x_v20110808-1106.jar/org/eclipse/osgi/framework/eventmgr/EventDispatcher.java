/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.eventmgr;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EventDispatcher<K, V, E> {
    public void dispatchEvent(K var1, V var2, int var3, E var4);
}

