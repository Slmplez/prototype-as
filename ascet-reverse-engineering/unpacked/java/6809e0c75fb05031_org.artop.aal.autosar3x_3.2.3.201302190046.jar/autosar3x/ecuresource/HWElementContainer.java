/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWConnection;
import autosar3x.ecuresource.HWElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HWElementContainer
extends HWElement {
    public EList<HWConnection> getConnections();

    public EList<HWElement> getContainedElements();
}

