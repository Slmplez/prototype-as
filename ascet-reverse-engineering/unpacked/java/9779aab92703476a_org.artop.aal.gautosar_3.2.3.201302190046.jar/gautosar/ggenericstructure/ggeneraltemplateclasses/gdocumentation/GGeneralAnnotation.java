/*
 * Decompiled with CFR 0.152.
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

public interface GGeneralAnnotation
extends GARObject {
    public String gGetAnnotationOrigin();

    public void gSetAnnotationOrigin(String var1);

    public void gUnsetAnnotationOrigin();

    public boolean gIsSetAnnotationOrigin();

    public GRemark gGetAnnotationText();

    public void gSetAnnotationText(GRemark var1);
}

