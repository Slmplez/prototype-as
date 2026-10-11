/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.ISignalMapping;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Gateway
extends FibexElement {
    public EcuInstance getEcu();

    public void setEcu(EcuInstance var1);

    public EList<FrameMapping> getFrameMappings();

    public EList<IPduMapping> getIPduMappings();

    public EList<ISignalMapping> getSignalMappings();
}

