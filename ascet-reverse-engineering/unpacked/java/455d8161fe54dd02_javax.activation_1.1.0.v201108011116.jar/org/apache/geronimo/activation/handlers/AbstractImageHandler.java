/*
 * Decompiled with CFR 0.152.
 */
package org.apache.geronimo.activation.handlers;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import javax.activation.DataContentHandler;
import javax.activation.DataSource;
import javax.activation.UnsupportedDataTypeException;
import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.ImageWriter;

public class AbstractImageHandler
implements DataContentHandler {
    private final DataFlavor flavour;

    public AbstractImageHandler(DataFlavor flavour) {
        this.flavour = flavour;
    }

    public DataFlavor[] getTransferDataFlavors() {
        return new DataFlavor[]{this.flavour};
    }

    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws UnsupportedFlavorException, IOException {
        return this.flavour.equals(dataFlavor) ? this.getContent(dataSource) : null;
    }

    public Object getContent(DataSource ds) throws IOException {
        Iterator<ImageReader> i = ImageIO.getImageReadersByMIMEType(ds.getContentType());
        if (!i.hasNext()) {
            throw new UnsupportedDataTypeException("Unknown image type " + ds.getContentType());
        }
        ImageReader reader = i.next();
        return reader.read(0);
    }

    public void writeTo(Object obj, String mimeType, OutputStream os) throws IOException {
        Iterator<ImageWriter> i = ImageIO.getImageWritersByMIMEType(mimeType);
        if (!i.hasNext()) {
            throw new UnsupportedDataTypeException("Unknown image type " + mimeType);
        }
        ImageWriter writer = i.next();
        writer.setOutput(os);
        if (obj instanceof RenderedImage) {
            writer.write((RenderedImage)obj);
        } else if (obj instanceof BufferedImage) {
            BufferedImage buffered = (BufferedImage)obj;
            writer.write(new IIOImage(buffered.getRaster(), null, null));
        } else if (obj instanceof Image) {
            Image image = (Image)obj;
            BufferedImage buffered = new BufferedImage(image.getWidth(null), image.getHeight(null), 2);
            Graphics2D graphics = buffered.createGraphics();
            graphics.drawImage(image, 0, 0, null, null);
            writer.write(new IIOImage(buffered.getRaster(), null, null));
        } else {
            throw new UnsupportedDataTypeException("Unknown image type " + obj.getClass().getName());
        }
        os.flush();
    }
}

