/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IIntroInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class IntroInfo
extends ProductObject
implements IIntroInfo {
    public static final String P_INTRO_ID = "introId";
    private static final long serialVersionUID = 1L;
    private String fIntroId;

    public IntroInfo(IProductModel model) {
        super(model);
    }

    public void setId(String id) {
        String old = this.fIntroId;
        this.fIntroId = id;
        if (this.isEditable()) {
            this.firePropertyChanged(P_INTRO_ID, old, this.fIntroId);
        }
    }

    public String getId() {
        return this.fIntroId;
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.fIntroId = element.getAttribute(P_INTRO_ID);
        }
    }

    public void write(String indent, PrintWriter writer) {
        if (this.fIntroId != null && this.fIntroId.length() > 0) {
            writer.println(String.valueOf(indent) + "<intro " + P_INTRO_ID + "=\"" + this.getWritableString(this.fIntroId) + "\"/>");
        }
    }
}

