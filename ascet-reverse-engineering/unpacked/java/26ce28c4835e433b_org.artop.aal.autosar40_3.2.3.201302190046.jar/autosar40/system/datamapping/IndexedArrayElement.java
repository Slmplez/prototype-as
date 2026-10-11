/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.datamapping;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface IndexedArrayElement
extends ARObject {
    public ApplicationArrayElement getApplicationArrayElement();

    public void setApplicationArrayElement(ApplicationArrayElement var1);

    public ImplementationDataTypeElement getImplementationArrayElement();

    public void setImplementationArrayElement(ImplementationDataTypeElement var1);

    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public IntegerDatatype getIndexData();

    public void setIndexData(IntegerDatatype var1);
}

