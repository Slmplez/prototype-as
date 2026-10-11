/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPort;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SignalTransformation
extends ARObject {
    public HWElement getHWElement();

    public void setHWElement(HWElement var1);

    public EList<HWPort> getInputHwPorts();

    public EList<HWPort> getOutputHwPorts();
}

