/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 */
package com.etas.ascet.importer.a2a.element;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import com.etas.ascet.importer.a2a.element.ElementAttributesImpl;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

public class CompositeElementAttributesImpl
extends ElementAttributesImpl {
    private final ApplicationRecordElement dataElement;

    public CompositeElementAttributesImpl(ApplicationRecordElement dataElement, ConverterContext context) {
        super((DataPrototype)dataElement, (AutosarDataType)dataElement.getType(), context);
        this.dataElement = dataElement;
    }

    @Override
    public String getName() {
        return AutosarScoping.getARPath((GIdentifiable)this.dataElement);
    }

    @Override
    public String getAddrMethod() {
        return null;
    }

    @Override
    public String getImplPolicy() {
        return null;
    }
}

