/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.product;

import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.AbstractModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.IProductModelFactory;
import org.eclipse.pde.internal.core.product.ProductModelFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.helpers.DefaultHandler;

public class ProductModel
extends AbstractModel
implements IProductModel {
    private static final long serialVersionUID = 1L;
    private IProductModelFactory fFactory;
    private IProduct fProduct;

    protected void updateTimeStamp() {
    }

    public IProduct getProduct() {
        if (this.fProduct == null) {
            this.fProduct = this.getFactory().createProduct();
        }
        return this.fProduct;
    }

    public IProductModelFactory getFactory() {
        if (this.fFactory == null) {
            this.fFactory = new ProductModelFactory(this);
        }
        return this.fFactory;
    }

    public String getInstallLocation() {
        return null;
    }

    public boolean isInSync() {
        return true;
    }

    public void load() throws CoreException {
    }

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        block15: {
            try {
                try {
                    SAXParser parser = this.getSaxParser();
                    XMLDefaultHandler handler = new XMLDefaultHandler();
                    parser.parse(stream, (DefaultHandler)handler);
                    if (handler.isPrepared()) {
                        this.processDocument(handler.getDocument());
                        this.setLoaded(true);
                    }
                }
                catch (Exception e) {
                    PDECore.logException(e);
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                        break block15;
                    }
                    catch (IOException iOException) {}
                    break block15;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public void reload(InputStream source, boolean outOfSync) throws CoreException {
        this.load(source, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this.fProduct}, null));
    }

    public boolean isEditable() {
        return false;
    }

    private void processDocument(Document doc) {
        Element rootNode = doc.getDocumentElement();
        if (this.fProduct == null) {
            this.fProduct = this.getFactory().createProduct();
        } else {
            this.fProduct.reset();
        }
        this.fProduct.parse(rootNode);
    }
}

