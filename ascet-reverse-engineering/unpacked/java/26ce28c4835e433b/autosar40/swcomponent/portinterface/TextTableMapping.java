/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.MappingDirectionEnum;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TextTableMapping
extends ARObject {
    public Boolean getIdenticalMapping();

    public void setIdenticalMapping(Boolean var1);

    public void unsetIdenticalMapping();

    public boolean isSetIdenticalMapping();

    public MappingDirectionEnum getMappingDirection();

    public void setMappingDirection(MappingDirectionEnum var1);

    public void unsetMappingDirection();

    public boolean isSetMappingDirection();

    public EList<TextTableValuePair> getValuePairs();
}

