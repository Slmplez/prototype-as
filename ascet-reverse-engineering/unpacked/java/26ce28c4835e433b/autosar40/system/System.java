/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gsystem.GSystem
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.FibexElementRefConditional;
import gautosar.gsystem.GSystem;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface System
extends ARElement,
AtpStructureElement,
GSystem {
    public EList<Chapter> getSystemDocumentations();

    public String getEcuExtractVersion();

    public void setEcuExtractVersion(String var1);

    public void unsetEcuExtractVersion();

    public boolean isSetEcuExtractVersion();

    public EList<FibexElementRefConditional> getFibexElements();

    public EList<SystemMapping> getMappings();

    public Long getPncVectorLength();

    public void setPncVectorLength(Long var1);

    public void unsetPncVectorLength();

    public boolean isSetPncVectorLength();

    public Long getPncVectorOffset();

    public void setPncVectorOffset(Long var1);

    public void unsetPncVectorOffset();

    public boolean isSetPncVectorOffset();

    public EList<RootSwCompositionPrototype> getRootSoftwareCompositions();

    public String getSystemVersion();

    public void setSystemVersion(String var1);

    public void unsetSystemVersion();

    public boolean isSetSystemVersion();

    public PositiveIntegerDatatype getPncVectorLengthData();

    public void setPncVectorLengthData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getPncVectorOffsetData();

    public void setPncVectorOffsetData(PositiveIntegerDatatype var1);
}

