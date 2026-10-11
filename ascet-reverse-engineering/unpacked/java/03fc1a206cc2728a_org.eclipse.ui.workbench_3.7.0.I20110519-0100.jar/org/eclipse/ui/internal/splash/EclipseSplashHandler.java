/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.splash;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.splash.BasicSplashHandler;

public class EclipseSplashHandler
extends BasicSplashHandler {
    public void init(Shell splash) {
        int foregroundColorInteger;
        super.init(splash);
        String progressRectString = null;
        String messageRectString = null;
        String foregroundColorString = null;
        IProduct product = Platform.getProduct();
        if (product != null) {
            progressRectString = product.getProperty("startupProgressRect");
            messageRectString = product.getProperty("startupMessageRect");
            foregroundColorString = product.getProperty("startupForegroundColor");
        }
        Rectangle progressRect = StringConverter.asRectangle((String)progressRectString, (Rectangle)new Rectangle(10, 10, 300, 15));
        this.setProgressRect(progressRect);
        Rectangle messageRect = StringConverter.asRectangle((String)messageRectString, (Rectangle)new Rectangle(10, 35, 300, 15));
        this.setMessageRect(messageRect);
        try {
            foregroundColorInteger = Integer.parseInt(foregroundColorString, 16);
        }
        catch (Exception exception) {
            foregroundColorInteger = 13817855;
        }
        this.setForeground(new RGB((foregroundColorInteger & 0xFF0000) >> 16, (foregroundColorInteger & 0xFF00) >> 8, foregroundColorInteger & 0xFF));
        if (PrefUtil.getInternalPreferenceStore().getBoolean("SHOW_BUILDID_ON_STARTUP")) {
            final String buildId = System.getProperty("eclipse.buildId", "Unknown Build");
            String buildIdLocString = product.getProperty("buildIdLocation");
            final Point buildIdPoint = StringConverter.asPoint((String)buildIdLocString, (Point)new Point(322, 190));
            this.getContent().addPaintListener(new PaintListener(){

                public void paintControl(PaintEvent e) {
                    e.gc.setForeground(EclipseSplashHandler.this.getForeground());
                    e.gc.drawText(buildId, buildIdPoint.x, buildIdPoint.y, true);
                }
            });
        } else {
            this.getContent();
        }
    }
}

