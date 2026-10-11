/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gsystem.GSystem
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.SystemMapping;
import autosar3x.system.fibex.fibexcore.FibexElement;
import gautosar.gsystem.GSystem;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface System
extends ARElement,
GSystem {
    public String getEcuExtractVersion();

    public void setEcuExtractVersion(String var1);

    public void unsetEcuExtractVersion();

    public boolean isSetEcuExtractVersion();

    public EList<FibexElement> getFibexElements();

    public SystemMapping getMapping();

    public void setMapping(SystemMapping var1);

    public Integer getPncVectorLength();

    public void setPncVectorLength(Integer var1);

    public void unsetPncVectorLength();

    public boolean isSetPncVectorLength();

    public Integer getPncVectorOffset();

    public void setPncVectorOffset(Integer var1);

    public void unsetPncVectorOffset();

    public boolean isSetPncVectorOffset();

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public String getSystemVersion();

    public void setSystemVersion(String var1);

    public void unsetSystemVersion();

    public boolean isSetSystemVersion();
}

