/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.artop.aal.common.util;

import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IReferringEList<E>
extends EList<E> {
    public void setReferringDest(int var1, String var2);

    public String getReferringDest(int var1);
}

