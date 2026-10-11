/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gcommonstructure.gdatadefproperties;

import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;

public interface GSwDataDefPropsConditional
extends GARObject {
    public GSwBaseType gGetBaseType();

    public void gSetBaseType(GSwBaseType var1);

    public GValueSpecification gGetInvalidValue();

    public void gSetInvalidValue(GValueSpecification var1);

    public GCompuMethod gGetCompuMethod();

    public void gSetCompuMethod(GCompuMethod var1);
}

