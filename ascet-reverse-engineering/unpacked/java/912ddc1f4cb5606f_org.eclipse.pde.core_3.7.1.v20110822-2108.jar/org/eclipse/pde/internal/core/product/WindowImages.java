/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.IWindowImages;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class WindowImages
extends ProductObject
implements IWindowImages {
    private static final long serialVersionUID = 1L;
    private String f16ImagePath;
    private String f32ImagePath;
    private String f48ImagePath;
    private String f64ImagePath;
    private String f128ImagePath;

    public WindowImages(IProductModel model) {
        super(model);
    }

    public String getImagePath(int size) {
        switch (size) {
            case 0: {
                return this.f16ImagePath;
            }
            case 1: {
                return this.f32ImagePath;
            }
            case 2: {
                return this.f48ImagePath;
            }
            case 3: {
                return this.f64ImagePath;
            }
            case 4: {
                return this.f128ImagePath;
            }
        }
        return null;
    }

    public void setImagePath(String path, int size) {
        switch (size) {
            case 0: {
                String old = this.f16ImagePath;
                this.f16ImagePath = path;
                if (!this.isEditable()) break;
                this.firePropertyChanged("i16", old, this.f16ImagePath);
                break;
            }
            case 1: {
                String old = this.f32ImagePath;
                this.f32ImagePath = path;
                if (!this.isEditable()) break;
                this.firePropertyChanged("i32", old, this.f32ImagePath);
                break;
            }
            case 2: {
                String old = this.f48ImagePath;
                this.f48ImagePath = path;
                if (!this.isEditable()) break;
                this.firePropertyChanged("i48", old, this.f48ImagePath);
                break;
            }
            case 3: {
                String old = this.f64ImagePath;
                this.f64ImagePath = path;
                if (!this.isEditable()) break;
                this.firePropertyChanged("i64", old, this.f64ImagePath);
                break;
            }
            case 4: {
                String old = this.f128ImagePath;
                this.f128ImagePath = path;
                if (!this.isEditable()) break;
                this.firePropertyChanged("i128", old, this.f128ImagePath);
            }
        }
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.f16ImagePath = element.getAttribute("i16");
            if (this.f16ImagePath == null || this.f16ImagePath.length() == 0) {
                this.f16ImagePath = element.getAttribute("small");
            }
            this.f32ImagePath = element.getAttribute("i32");
            if (this.f32ImagePath == null || this.f32ImagePath.length() == 0) {
                this.f32ImagePath = element.getAttribute("large");
            }
            this.f48ImagePath = element.getAttribute("i48");
            this.f64ImagePath = element.getAttribute("i64");
            this.f128ImagePath = element.getAttribute("i128");
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<windowImages");
        if (this.f16ImagePath != null && this.f16ImagePath.length() > 0) {
            writer.print(" i16=\"" + this.getWritableString(this.f16ImagePath) + "\"");
        }
        if (this.f32ImagePath != null && this.f32ImagePath.length() > 0) {
            writer.print(" i32=\"" + this.getWritableString(this.f32ImagePath) + "\"");
        }
        if (this.f48ImagePath != null && this.f48ImagePath.length() > 0) {
            writer.print(" i48=\"" + this.getWritableString(this.f48ImagePath) + "\"");
        }
        if (this.f64ImagePath != null && this.f64ImagePath.length() > 0) {
            writer.print(" i64=\"" + this.getWritableString(this.f64ImagePath) + "\"");
        }
        if (this.f128ImagePath != null && this.f128ImagePath.length() > 0) {
            writer.print(" i128=\"" + this.getWritableString(this.f128ImagePath) + "\"");
        }
        writer.println("/>");
    }
}

