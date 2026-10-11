/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.LEDataInputStream;

public class JPEGDecoder {
    static final int DCTSIZE = 8;
    static final int DCTSIZE2 = 64;
    static final int NUM_QUANT_TBLS = 4;
    static final int NUM_HUFF_TBLS = 4;
    static final int NUM_ARITH_TBLS = 16;
    static final int MAX_COMPS_IN_SCAN = 4;
    static final int MAX_COMPONENTS = 10;
    static final int MAX_SAMP_FACTOR = 4;
    static final int D_MAX_BLOCKS_IN_MCU = 10;
    static final int HUFF_LOOKAHEAD = 8;
    static final int MAX_Q_COMPS = 4;
    static final int IFAST_SCALE_BITS = 2;
    static final int MAXJSAMPLE = 255;
    static final int CENTERJSAMPLE = 128;
    static final int MIN_GET_BITS = 25;
    static final int INPUT_BUFFER_SIZE = 4096;
    static final int SCALEBITS = 16;
    static final int ONE_HALF = 32768;
    static final int RGB_RED = 2;
    static final int RGB_GREEN = 1;
    static final int RGB_BLUE = 0;
    static final int RGB_PIXELSIZE = 3;
    static final int JBUF_PASS_THRU = 0;
    static final int JBUF_SAVE_SOURCE = 1;
    static final int JBUF_CRANK_DEST = 2;
    static final int JBUF_SAVE_AND_PASS = 3;
    static final int JPEG_MAX_DIMENSION = 65500;
    static final int BITS_IN_JSAMPLE = 8;
    static final int JDITHER_NONE = 0;
    static final int JDITHER_ORDERED = 1;
    static final int JDITHER_FS = 2;
    static final int JDCT_ISLOW = 0;
    static final int JDCT_IFAST = 1;
    static final int JDCT_FLOAT = 2;
    static final int JDCT_DEFAULT = 0;
    static final int JCS_UNKNOWN = 0;
    static final int JCS_GRAYSCALE = 1;
    static final int JCS_RGB = 2;
    static final int JCS_YCbCr = 3;
    static final int JCS_CMYK = 4;
    static final int JCS_YCCK = 5;
    static final int SAVED_COEFS = 6;
    static final int Q01_POS = 1;
    static final int Q10_POS = 8;
    static final int Q20_POS = 16;
    static final int Q11_POS = 9;
    static final int Q02_POS = 2;
    static final int CTX_PREPARE_FOR_IMCU = 0;
    static final int CTX_PROCESS_IMCU = 1;
    static final int CTX_POSTPONED_ROW = 2;
    static final int APP0_DATA_LEN = 14;
    static final int APP14_DATA_LEN = 12;
    static final int APPN_DATA_LEN = 14;
    static final int M_SOF0 = 192;
    static final int M_SOF1 = 193;
    static final int M_SOF2 = 194;
    static final int M_SOF3 = 195;
    static final int M_SOF5 = 197;
    static final int M_SOF6 = 198;
    static final int M_SOF7 = 199;
    static final int M_JPG = 200;
    static final int M_SOF9 = 201;
    static final int M_SOF10 = 202;
    static final int M_SOF11 = 203;
    static final int M_SOF13 = 205;
    static final int M_SOF14 = 206;
    static final int M_SOF15 = 207;
    static final int M_DHT = 196;
    static final int M_DAC = 204;
    static final int M_RST0 = 208;
    static final int M_RST1 = 209;
    static final int M_RST2 = 210;
    static final int M_RST3 = 211;
    static final int M_RST4 = 212;
    static final int M_RST5 = 213;
    static final int M_RST6 = 214;
    static final int M_RST7 = 215;
    static final int M_SOI = 216;
    static final int M_EOI = 217;
    static final int M_SOS = 218;
    static final int M_DQT = 219;
    static final int M_DNL = 220;
    static final int M_DRI = 221;
    static final int M_DHP = 222;
    static final int M_EXP = 223;
    static final int M_APP0 = 224;
    static final int M_APP1 = 225;
    static final int M_APP2 = 226;
    static final int M_APP3 = 227;
    static final int M_APP4 = 228;
    static final int M_APP5 = 229;
    static final int M_APP6 = 230;
    static final int M_APP7 = 231;
    static final int M_APP8 = 232;
    static final int M_APP9 = 233;
    static final int M_APP10 = 234;
    static final int M_APP11 = 235;
    static final int M_APP12 = 236;
    static final int M_APP13 = 237;
    static final int M_APP14 = 238;
    static final int M_APP15 = 239;
    static final int M_JPG0 = 240;
    static final int M_JPG13 = 253;
    static final int M_COM = 254;
    static final int M_TEM = 1;
    static final int M_ERROR = 256;
    static final int CSTATE_START = 100;
    static final int CSTATE_SCANNING = 101;
    static final int CSTATE_RAW_OK = 102;
    static final int CSTATE_WRCOEFS = 103;
    static final int DSTATE_START = 200;
    static final int DSTATE_INHEADER = 201;
    static final int DSTATE_READY = 202;
    static final int DSTATE_PRELOAD = 203;
    static final int DSTATE_PRESCAN = 204;
    static final int DSTATE_SCANNING = 205;
    static final int DSTATE_RAW_OK = 206;
    static final int DSTATE_BUFIMAGE = 207;
    static final int DSTATE_BUFPOST = 208;
    static final int DSTATE_RDCOEFS = 209;
    static final int DSTATE_STOPPING = 210;
    static final int JPEG_REACHED_SOS = 1;
    static final int JPEG_REACHED_EOI = 2;
    static final int JPEG_ROW_COMPLETED = 3;
    static final int JPEG_SCAN_COMPLETED = 4;
    static final int JPEG_SUSPENDED = 0;
    static final int JPEG_HEADER_OK = 1;
    static final int JPEG_HEADER_TABLES_ONLY = 2;
    static final int DECOMPRESS_DATA = 0;
    static final int DECOMPRESS_SMOOTH_DATA = 1;
    static final int DECOMPRESS_ONEPASS = 2;
    static final int CONSUME_DATA = 0;
    static final int DUMMY_CONSUME_DATA = 1;
    static final int PROCESS_DATA_SIMPLE_MAIN = 0;
    static final int PROCESS_DATA_CONTEXT_MAIN = 1;
    static final int PROCESS_DATA_CRANK_POST = 2;
    static final int POST_PROCESS_1PASS = 0;
    static final int POST_PROCESS_DATA_UPSAMPLE = 1;
    static final int NULL_CONVERT = 0;
    static final int GRAYSCALE_CONVERT = 1;
    static final int YCC_RGB_CONVERT = 2;
    static final int GRAY_RGB_CONVERT = 3;
    static final int YCCK_CMYK_CONVERT = 4;
    static final int NOOP_UPSAMPLE = 0;
    static final int FULLSIZE_UPSAMPLE = 1;
    static final int H2V1_FANCY_UPSAMPLE = 2;
    static final int H2V1_UPSAMPLE = 3;
    static final int H2V2_FANCY_UPSAMPLE = 4;
    static final int H2V2_UPSAMPLE = 5;
    static final int INT_UPSAMPLE = 6;
    static final int INPUT_CONSUME_INPUT = 0;
    static final int COEF_CONSUME_INPUT = 1;
    static int[] extend_test;
    static int[] extend_offset;
    static int[] jpeg_natural_order;
    static final int CONST_BITS = 13;
    static final int PASS1_BITS = 2;
    static final int RANGE_MASK = 1023;

    static {
        int[] nArray = new int[16];
        nArray[1] = 1;
        nArray[2] = 2;
        nArray[3] = 4;
        nArray[4] = 8;
        nArray[5] = 16;
        nArray[6] = 32;
        nArray[7] = 64;
        nArray[8] = 128;
        nArray[9] = 256;
        nArray[10] = 512;
        nArray[11] = 1024;
        nArray[12] = 2048;
        nArray[13] = 4096;
        nArray[14] = 8192;
        nArray[15] = 16384;
        extend_test = nArray;
        int[] nArray2 = new int[16];
        nArray2[1] = -1;
        nArray2[2] = -3;
        nArray2[3] = -7;
        nArray2[4] = -15;
        nArray2[5] = -31;
        nArray2[6] = -63;
        nArray2[7] = -127;
        nArray2[8] = -255;
        nArray2[9] = -511;
        nArray2[10] = -1023;
        nArray2[11] = -2047;
        nArray2[12] = -4095;
        nArray2[13] = -8191;
        nArray2[14] = -16383;
        nArray2[15] = -32767;
        extend_offset = nArray2;
        int[] nArray3 = new int[80];
        nArray3[1] = 1;
        nArray3[2] = 8;
        nArray3[3] = 16;
        nArray3[4] = 9;
        nArray3[5] = 2;
        nArray3[6] = 3;
        nArray3[7] = 10;
        nArray3[8] = 17;
        nArray3[9] = 24;
        nArray3[10] = 32;
        nArray3[11] = 25;
        nArray3[12] = 18;
        nArray3[13] = 11;
        nArray3[14] = 4;
        nArray3[15] = 5;
        nArray3[16] = 12;
        nArray3[17] = 19;
        nArray3[18] = 26;
        nArray3[19] = 33;
        nArray3[20] = 40;
        nArray3[21] = 48;
        nArray3[22] = 41;
        nArray3[23] = 34;
        nArray3[24] = 27;
        nArray3[25] = 20;
        nArray3[26] = 13;
        nArray3[27] = 6;
        nArray3[28] = 7;
        nArray3[29] = 14;
        nArray3[30] = 21;
        nArray3[31] = 28;
        nArray3[32] = 35;
        nArray3[33] = 42;
        nArray3[34] = 49;
        nArray3[35] = 56;
        nArray3[36] = 57;
        nArray3[37] = 50;
        nArray3[38] = 43;
        nArray3[39] = 36;
        nArray3[40] = 29;
        nArray3[41] = 22;
        nArray3[42] = 15;
        nArray3[43] = 23;
        nArray3[44] = 30;
        nArray3[45] = 37;
        nArray3[46] = 44;
        nArray3[47] = 51;
        nArray3[48] = 58;
        nArray3[49] = 59;
        nArray3[50] = 52;
        nArray3[51] = 45;
        nArray3[52] = 38;
        nArray3[53] = 31;
        nArray3[54] = 39;
        nArray3[55] = 46;
        nArray3[56] = 53;
        nArray3[57] = 60;
        nArray3[58] = 61;
        nArray3[59] = 54;
        nArray3[60] = 47;
        nArray3[61] = 55;
        nArray3[62] = 62;
        nArray3[63] = 63;
        nArray3[64] = 63;
        nArray3[65] = 63;
        nArray3[66] = 63;
        nArray3[67] = 63;
        nArray3[68] = 63;
        nArray3[69] = 63;
        nArray3[70] = 63;
        nArray3[71] = 63;
        nArray3[72] = 63;
        nArray3[73] = 63;
        nArray3[74] = 63;
        nArray3[75] = 63;
        nArray3[76] = 63;
        nArray3[77] = 63;
        nArray3[78] = 63;
        nArray3[79] = 63;
        jpeg_natural_order = nArray3;
    }

    static void error() {
        SWT.error(40);
    }

    static void error(int code) {
        SWT.error(code);
    }

    static void error(String msg) {
        SWT.error(40, null, msg);
    }

    static void jinit_marker_reader(jpeg_decompress_struct cinfo) {
        jpeg_marker_reader marker = cinfo.marker = new jpeg_marker_reader();
        marker.length_limit_COM = 0;
        JPEGDecoder.reset_marker_reader(cinfo);
    }

    static void jinit_d_coef_controller(jpeg_decompress_struct cinfo, boolean need_full_buffer) {
        jpeg_d_coef_controller coef;
        cinfo.coef = coef = new jpeg_d_coef_controller();
        coef.coef_bits_latch = null;
        if (need_full_buffer) {
            int ci = 0;
            while (ci < cinfo.num_components) {
                jpeg_component_info compptr = cinfo.comp_info[ci];
                coef.whole_image[ci] = new short[(int)JPEGDecoder.jround_up(compptr.height_in_blocks, compptr.v_samp_factor)][(int)JPEGDecoder.jround_up(compptr.width_in_blocks, compptr.h_samp_factor)][64];
                ++ci;
            }
            coef.decompress_data = 0;
            coef.coef_arrays = coef.whole_image[0];
        } else {
            coef.MCU_buffer = new short[10][64];
            coef.decompress_data = 2;
            coef.coef_arrays = null;
        }
    }

    static void start_output_pass(jpeg_decompress_struct cinfo) {
        jpeg_d_coef_controller coef = cinfo.coef;
        if (coef.coef_arrays != null) {
            coef.decompress_data = cinfo.do_block_smoothing && JPEGDecoder.smoothing_ok(cinfo) ? 1 : 0;
        }
        cinfo.output_iMCU_row = 0;
    }

    static void jpeg_create_decompress(jpeg_decompress_struct cinfo) {
        cinfo.is_decompressor = true;
        cinfo.marker_list = null;
        JPEGDecoder.jinit_marker_reader(cinfo);
        JPEGDecoder.jinit_input_controller(cinfo);
        cinfo.global_state = 200;
    }

    static void jpeg_calc_output_dimensions(jpeg_decompress_struct cinfo) {
        if (cinfo.global_state != 202) {
            JPEGDecoder.error();
        }
        cinfo.output_width = cinfo.image_width;
        cinfo.output_height = cinfo.image_height;
        switch (cinfo.out_color_space) {
            case 1: {
                cinfo.out_color_components = 1;
                break;
            }
            case 2: 
            case 3: {
                cinfo.out_color_components = 3;
                break;
            }
            case 4: 
            case 5: {
                cinfo.out_color_components = 4;
                break;
            }
            default: {
                cinfo.out_color_components = cinfo.num_components;
            }
        }
        cinfo.output_components = cinfo.quantize_colors ? 1 : cinfo.out_color_components;
        cinfo.rec_outbuf_height = JPEGDecoder.use_merged_upsample(cinfo) ? cinfo.max_v_samp_factor : 1;
    }

    static boolean use_merged_upsample(jpeg_decompress_struct cinfo) {
        if (cinfo.do_fancy_upsampling || cinfo.CCIR601_sampling) {
            return false;
        }
        if (cinfo.jpeg_color_space != 3 || cinfo.num_components != 3 || cinfo.out_color_space != 2 || cinfo.out_color_components != 3) {
            return false;
        }
        if (cinfo.comp_info[0].h_samp_factor != 2 || cinfo.comp_info[1].h_samp_factor != 1 || cinfo.comp_info[2].h_samp_factor != 1 || cinfo.comp_info[0].v_samp_factor > 2 || cinfo.comp_info[1].v_samp_factor != 1 || cinfo.comp_info[2].v_samp_factor != 1) {
            return false;
        }
        return cinfo.comp_info[0].DCT_scaled_size == cinfo.min_DCT_scaled_size && cinfo.comp_info[1].DCT_scaled_size == cinfo.min_DCT_scaled_size && cinfo.comp_info[2].DCT_scaled_size == cinfo.min_DCT_scaled_size;
    }

    static void prepare_range_limit_table(jpeg_decompress_struct cinfo) {
        int offset;
        byte[] table = new byte[1408];
        cinfo.sample_range_limit_offset = offset = 256;
        cinfo.sample_range_limit = table;
        int i = 0;
        while (i <= 255) {
            table[i + offset] = (byte)i;
            ++i;
        }
        offset += 128;
        i = 128;
        while (i < 512) {
            table[i + offset] = -1;
            ++i;
        }
        System.arraycopy(cinfo.sample_range_limit, cinfo.sample_range_limit_offset, table, offset + 896, 128);
    }

    static void build_ycc_rgb_table(jpeg_decompress_struct cinfo) {
        jpeg_color_deconverter cconvert = cinfo.cconvert;
        cconvert.Cr_r_tab = new int[256];
        cconvert.Cb_b_tab = new int[256];
        cconvert.Cr_g_tab = new int[256];
        cconvert.Cb_g_tab = new int[256];
        int i = 0;
        int x = -128;
        while (i <= 255) {
            cconvert.Cr_r_tab[i] = 91881 * x + 32768 >> 16;
            cconvert.Cb_b_tab[i] = 116130 * x + 32768 >> 16;
            cconvert.Cr_g_tab[i] = -46802 * x;
            cconvert.Cb_g_tab[i] = -22554 * x + 32768;
            ++i;
            ++x;
        }
    }

    static void jinit_color_deconverter(jpeg_decompress_struct cinfo) {
        jpeg_color_deconverter cconvert = cinfo.cconvert = new jpeg_color_deconverter();
        switch (cinfo.jpeg_color_space) {
            case 1: {
                if (cinfo.num_components == 1) break;
                JPEGDecoder.error();
                break;
            }
            case 2: 
            case 3: {
                if (cinfo.num_components == 3) break;
                JPEGDecoder.error();
                break;
            }
            case 4: 
            case 5: {
                if (cinfo.num_components == 4) break;
                JPEGDecoder.error();
                break;
            }
            default: {
                if (cinfo.num_components >= 1) break;
                JPEGDecoder.error();
            }
        }
        switch (cinfo.out_color_space) {
            case 1: {
                cinfo.out_color_components = 1;
                if (cinfo.jpeg_color_space == 1 || cinfo.jpeg_color_space == 3) {
                    cconvert.color_convert = 1;
                    int ci = 1;
                    while (ci < cinfo.num_components) {
                        cinfo.comp_info[ci].component_needed = false;
                        ++ci;
                    }
                    break;
                }
                JPEGDecoder.error();
                break;
            }
            case 2: {
                cinfo.out_color_components = 3;
                if (cinfo.jpeg_color_space == 3) {
                    cconvert.color_convert = 2;
                    JPEGDecoder.build_ycc_rgb_table(cinfo);
                    break;
                }
                if (cinfo.jpeg_color_space == 1) {
                    cconvert.color_convert = 3;
                    break;
                }
                if (cinfo.jpeg_color_space == 2) {
                    cconvert.color_convert = 0;
                    break;
                }
                JPEGDecoder.error();
                break;
            }
            case 4: {
                cinfo.out_color_components = 4;
                if (cinfo.jpeg_color_space == 5) {
                    cconvert.color_convert = 4;
                    JPEGDecoder.build_ycc_rgb_table(cinfo);
                    break;
                }
                if (cinfo.jpeg_color_space == 4) {
                    cconvert.color_convert = 0;
                    break;
                }
                JPEGDecoder.error();
                break;
            }
            default: {
                if (cinfo.out_color_space == cinfo.jpeg_color_space) {
                    cinfo.out_color_components = cinfo.num_components;
                    cconvert.color_convert = 0;
                    break;
                }
                JPEGDecoder.error();
            }
        }
        cinfo.output_components = cinfo.quantize_colors ? 1 : cinfo.out_color_components;
    }

    static void jinit_d_post_controller(jpeg_decompress_struct cinfo, boolean need_full_buffer) {
        jpeg_d_post_controller post = cinfo.post = new jpeg_d_post_controller();
        post.whole_image = null;
        post.buffer = null;
        if (cinfo.quantize_colors) {
            JPEGDecoder.error(20);
        }
    }

    static void make_funny_pointers(jpeg_decompress_struct cinfo) {
        jpeg_d_main_controller main = cinfo.main;
        int M = cinfo.min_DCT_scaled_size;
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int rgroup = compptr.v_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            byte[][] xbuf0 = main.xbuffer[0][ci];
            int xbuf0_offset = main.xbuffer_offset[0][ci];
            byte[][] xbuf1 = main.xbuffer[1][ci];
            int xbuf1_offset = main.xbuffer_offset[1][ci];
            byte[][] buf = main.buffer[ci];
            int i = 0;
            while (i < rgroup * (M + 2)) {
                byte[] byArray = buf[i];
                xbuf1[i + xbuf1_offset] = byArray;
                xbuf0[i + xbuf0_offset] = byArray;
                ++i;
            }
            i = 0;
            while (i < rgroup * 2) {
                xbuf1[rgroup * (M - 2) + i + xbuf1_offset] = buf[rgroup * M + i];
                xbuf1[rgroup * M + i + xbuf1_offset] = buf[rgroup * (M - 2) + i];
                ++i;
            }
            i = 0;
            while (i < rgroup) {
                xbuf0[i - rgroup + xbuf0_offset] = xbuf0[0 + xbuf0_offset];
                ++i;
            }
            ++ci;
        }
    }

    static void alloc_funny_pointers(jpeg_decompress_struct cinfo) {
        jpeg_d_main_controller main = cinfo.main;
        int M = cinfo.min_DCT_scaled_size;
        main.xbuffer[0] = new byte[cinfo.num_components][][];
        main.xbuffer[1] = new byte[cinfo.num_components][][];
        main.xbuffer_offset[0] = new int[cinfo.num_components];
        main.xbuffer_offset[1] = new int[cinfo.num_components];
        int ci = 0;
        while (ci < cinfo.num_components) {
            int offset;
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int rgroup = compptr.v_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            byte[][] xbuf = new byte[2 * (rgroup * (M + 4))][];
            main.xbuffer_offset[0][ci] = offset = rgroup;
            main.xbuffer[0][ci] = xbuf;
            main.xbuffer_offset[1][ci] = offset += rgroup * (M + 4);
            main.xbuffer[1][ci] = xbuf;
            ++ci;
        }
    }

    static void jinit_d_main_controller(jpeg_decompress_struct cinfo, boolean need_full_buffer) {
        int ngroups;
        jpeg_d_main_controller main = cinfo.main = new jpeg_d_main_controller();
        if (need_full_buffer) {
            JPEGDecoder.error();
        }
        if (cinfo.upsample.need_context_rows) {
            if (cinfo.min_DCT_scaled_size < 2) {
                JPEGDecoder.error();
            }
            JPEGDecoder.alloc_funny_pointers(cinfo);
            ngroups = cinfo.min_DCT_scaled_size + 2;
        } else {
            ngroups = cinfo.min_DCT_scaled_size;
        }
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int rgroup = compptr.v_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            main.buffer[ci] = new byte[rgroup * ngroups][compptr.width_in_blocks * compptr.DCT_scaled_size];
            ++ci;
        }
    }

    static long jround_up(long a, long b) {
        return (a += b - 1L) - a % b;
    }

    static void jinit_upsampler(jpeg_decompress_struct cinfo) {
        jpeg_upsampler upsample;
        cinfo.upsample = upsample = new jpeg_upsampler();
        upsample.need_context_rows = false;
        if (cinfo.CCIR601_sampling) {
            JPEGDecoder.error();
        }
        boolean do_fancy = cinfo.do_fancy_upsampling && cinfo.min_DCT_scaled_size > 1;
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int h_in_group = compptr.h_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            int v_in_group = compptr.v_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            int h_out_group = cinfo.max_h_samp_factor;
            int v_out_group = cinfo.max_v_samp_factor;
            upsample.rowgroup_height[ci] = v_in_group;
            boolean need_buffer = true;
            if (!compptr.component_needed) {
                upsample.methods[ci] = 0;
                need_buffer = false;
            } else if (h_in_group == h_out_group && v_in_group == v_out_group) {
                upsample.methods[ci] = 1;
                need_buffer = false;
            } else if (h_in_group * 2 == h_out_group && v_in_group == v_out_group) {
                upsample.methods[ci] = do_fancy && compptr.downsampled_width > 2 ? 2 : 3;
            } else if (h_in_group * 2 == h_out_group && v_in_group * 2 == v_out_group) {
                if (do_fancy && compptr.downsampled_width > 2) {
                    upsample.methods[ci] = 4;
                    upsample.need_context_rows = true;
                } else {
                    upsample.methods[ci] = 5;
                }
            } else if (h_out_group % h_in_group == 0 && v_out_group % v_in_group == 0) {
                upsample.methods[ci] = 6;
                upsample.h_expand[ci] = (byte)(h_out_group / h_in_group);
                upsample.v_expand[ci] = (byte)(v_out_group / v_in_group);
            } else {
                JPEGDecoder.error();
            }
            if (need_buffer) {
                upsample.color_buf[ci] = new byte[cinfo.max_v_samp_factor][(int)JPEGDecoder.jround_up(cinfo.output_width, cinfo.max_h_samp_factor)];
            }
            ++ci;
        }
    }

    static void jinit_phuff_decoder(jpeg_decompress_struct cinfo) {
        cinfo.entropy = new phuff_entropy_decoder();
        int[][] coef_bit_ptr = cinfo.coef_bits = new int[cinfo.num_components][64];
        int ci = 0;
        while (ci < cinfo.num_components) {
            int i = 0;
            while (i < 64) {
                coef_bit_ptr[ci][i] = -1;
                ++i;
            }
            ++ci;
        }
    }

    static void jinit_huff_decoder(jpeg_decompress_struct cinfo) {
        cinfo.entropy = new huff_entropy_decoder();
    }

    static void jinit_inverse_dct(jpeg_decompress_struct cinfo) {
        jpeg_inverse_dct idct = cinfo.idct = new jpeg_inverse_dct();
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            compptr.dct_table = new int[64];
            idct.cur_method[ci] = -1;
            ++ci;
        }
    }

    static void jpeg_idct_islow(jpeg_decompress_struct cinfo, jpeg_component_info compptr, short[] coef_block, byte[][] output_buf, int output_buf_offset, int output_col) {
        int z5;
        int z4;
        int tmp12;
        int tmp11;
        int tmp13;
        int tmp10;
        int tmp1;
        int tmp0;
        int tmp3;
        int tmp2;
        int z1;
        int z3;
        int z2;
        byte[] range_limit = cinfo.sample_range_limit;
        int range_limit_offset = cinfo.sample_range_limit_offset + 128;
        int[] workspace = cinfo.workspace;
        short[] inptr = coef_block;
        int[] quantptr = compptr.dct_table;
        int[] wsptr = workspace;
        int inptr_offset = 0;
        int quantptr_offset = 0;
        int wsptr_offset = 0;
        int ctr = 8;
        while (ctr > 0) {
            if (inptr[8 + inptr_offset] == 0 && inptr[16 + inptr_offset] == 0 && inptr[24 + inptr_offset] == 0 && inptr[32 + inptr_offset] == 0 && inptr[40 + inptr_offset] == 0 && inptr[48 + inptr_offset] == 0 && inptr[56 + inptr_offset] == 0) {
                int dcval;
                wsptr[0 + wsptr_offset] = dcval = inptr[0 + inptr_offset] * quantptr[0 + quantptr_offset] << 2;
                wsptr[8 + wsptr_offset] = dcval;
                wsptr[16 + wsptr_offset] = dcval;
                wsptr[24 + wsptr_offset] = dcval;
                wsptr[32 + wsptr_offset] = dcval;
                wsptr[40 + wsptr_offset] = dcval;
                wsptr[48 + wsptr_offset] = dcval;
                wsptr[56 + wsptr_offset] = dcval;
                ++inptr_offset;
                ++quantptr_offset;
                ++wsptr_offset;
            } else {
                z2 = inptr[16 + inptr_offset] * quantptr[16 + quantptr_offset];
                z3 = inptr[48 + inptr_offset] * quantptr[48 + quantptr_offset];
                z1 = (z2 + z3) * 4433;
                tmp2 = z1 + z3 * -15137;
                tmp3 = z1 + z2 * 6270;
                z2 = inptr[0 + inptr_offset] * quantptr[0 + quantptr_offset];
                z3 = inptr[32 + inptr_offset] * quantptr[32 + quantptr_offset];
                tmp0 = z2 + z3 << 13;
                tmp1 = z2 - z3 << 13;
                tmp10 = tmp0 + tmp3;
                tmp13 = tmp0 - tmp3;
                tmp11 = tmp1 + tmp2;
                tmp12 = tmp1 - tmp2;
                tmp0 = inptr[56 + inptr_offset] * quantptr[56 + quantptr_offset];
                tmp1 = inptr[40 + inptr_offset] * quantptr[40 + quantptr_offset];
                tmp2 = inptr[24 + inptr_offset] * quantptr[24 + quantptr_offset];
                tmp3 = inptr[8 + inptr_offset] * quantptr[8 + quantptr_offset];
                z1 = tmp0 + tmp3;
                z2 = tmp1 + tmp2;
                z3 = tmp0 + tmp2;
                z4 = tmp1 + tmp3;
                z5 = (z3 + z4) * 9633;
                tmp0 *= 2446;
                tmp1 *= 16819;
                tmp2 *= 25172;
                tmp3 *= 12299;
                z3 *= -16069;
                z4 *= -3196;
                tmp0 += (z1 *= -7373) + (z3 += z5);
                wsptr[0 + wsptr_offset] = tmp10 + (tmp3 += z1 + z4) + 1024 >> 11;
                wsptr[56 + wsptr_offset] = tmp10 - tmp3 + 1024 >> 11;
                wsptr[8 + wsptr_offset] = tmp11 + (tmp2 += z2 + z3) + 1024 >> 11;
                wsptr[48 + wsptr_offset] = tmp11 - tmp2 + 1024 >> 11;
                wsptr[16 + wsptr_offset] = tmp12 + (tmp1 += (z2 *= -20995) + (z4 += z5)) + 1024 >> 11;
                wsptr[40 + wsptr_offset] = tmp12 - tmp1 + 1024 >> 11;
                wsptr[24 + wsptr_offset] = tmp13 + tmp0 + 1024 >> 11;
                wsptr[32 + wsptr_offset] = tmp13 - tmp0 + 1024 >> 11;
                ++inptr_offset;
                ++quantptr_offset;
                ++wsptr_offset;
            }
            --ctr;
        }
        int outptr_offset = 0;
        wsptr = workspace;
        wsptr_offset = 0;
        ctr = 0;
        while (ctr < 8) {
            byte[] outptr = output_buf[ctr + output_buf_offset];
            outptr_offset = output_col;
            if (wsptr[1 + wsptr_offset] == 0 && wsptr[2 + wsptr_offset] == 0 && wsptr[3 + wsptr_offset] == 0 && wsptr[4 + wsptr_offset] == 0 && wsptr[5 + wsptr_offset] == 0 && wsptr[6 + wsptr_offset] == 0 && wsptr[7 + wsptr_offset] == 0) {
                byte dcval;
                outptr[0 + outptr_offset] = dcval = range_limit[range_limit_offset + (wsptr[0 + wsptr_offset] + 16 >> 5 & 0x3FF)];
                outptr[1 + outptr_offset] = dcval;
                outptr[2 + outptr_offset] = dcval;
                outptr[3 + outptr_offset] = dcval;
                outptr[4 + outptr_offset] = dcval;
                outptr[5 + outptr_offset] = dcval;
                outptr[6 + outptr_offset] = dcval;
                outptr[7 + outptr_offset] = dcval;
                wsptr_offset += 8;
            } else {
                z2 = wsptr[2 + wsptr_offset];
                z3 = wsptr[6 + wsptr_offset];
                z1 = (z2 + z3) * 4433;
                tmp2 = z1 + z3 * -15137;
                tmp3 = z1 + z2 * 6270;
                tmp0 = wsptr[0 + wsptr_offset] + wsptr[4 + wsptr_offset] << 13;
                tmp1 = wsptr[0 + wsptr_offset] - wsptr[4 + wsptr_offset] << 13;
                tmp10 = tmp0 + tmp3;
                tmp13 = tmp0 - tmp3;
                tmp11 = tmp1 + tmp2;
                tmp12 = tmp1 - tmp2;
                tmp0 = wsptr[7 + wsptr_offset];
                tmp1 = wsptr[5 + wsptr_offset];
                tmp2 = wsptr[3 + wsptr_offset];
                tmp3 = wsptr[1 + wsptr_offset];
                z1 = tmp0 + tmp3;
                z2 = tmp1 + tmp2;
                z3 = tmp0 + tmp2;
                z4 = tmp1 + tmp3;
                z5 = (z3 + z4) * 9633;
                tmp0 *= 2446;
                tmp1 *= 16819;
                tmp2 *= 25172;
                tmp3 *= 12299;
                z3 *= -16069;
                z4 *= -3196;
                tmp0 += (z1 *= -7373) + (z3 += z5);
                outptr[0 + outptr_offset] = range_limit[range_limit_offset + (tmp10 + (tmp3 += z1 + z4) + 131072 >> 18 & 0x3FF)];
                outptr[7 + outptr_offset] = range_limit[range_limit_offset + (tmp10 - tmp3 + 131072 >> 18 & 0x3FF)];
                outptr[1 + outptr_offset] = range_limit[range_limit_offset + (tmp11 + (tmp2 += z2 + z3) + 131072 >> 18 & 0x3FF)];
                outptr[6 + outptr_offset] = range_limit[range_limit_offset + (tmp11 - tmp2 + 131072 >> 18 & 0x3FF)];
                outptr[2 + outptr_offset] = range_limit[range_limit_offset + (tmp12 + (tmp1 += (z2 *= -20995) + (z4 += z5)) + 131072 >> 18 & 0x3FF)];
                outptr[5 + outptr_offset] = range_limit[range_limit_offset + (tmp12 - tmp1 + 131072 >> 18 & 0x3FF)];
                outptr[3 + outptr_offset] = range_limit[range_limit_offset + (tmp13 + tmp0 + 131072 >> 18 & 0x3FF)];
                outptr[4 + outptr_offset] = range_limit[range_limit_offset + (tmp13 - tmp0 + 131072 >> 18 & 0x3FF)];
                wsptr_offset += 8;
            }
            ++ctr;
        }
    }

    static void upsample(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        JPEGDecoder.sep_upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail);
    }

    static boolean smoothing_ok(jpeg_decompress_struct cinfo) {
        jpeg_d_coef_controller coef = cinfo.coef;
        boolean smoothing_useful = false;
        if (!cinfo.progressive_mode || cinfo.coef_bits == null) {
            return false;
        }
        if (coef.coef_bits_latch == null) {
            coef.coef_bits_latch = new int[cinfo.num_components * 6];
        }
        int[] coef_bits_latch = coef.coef_bits_latch;
        int coef_bits_latch_offset = 0;
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            JQUANT_TBL qtable = compptr.quant_table;
            if (qtable == null) {
                return false;
            }
            if (qtable.quantval[0] == 0 || qtable.quantval[1] == 0 || qtable.quantval[8] == 0 || qtable.quantval[16] == 0 || qtable.quantval[9] == 0 || qtable.quantval[2] == 0) {
                return false;
            }
            int[] coef_bits = cinfo.coef_bits[ci];
            if (coef_bits[0] < 0) {
                return false;
            }
            int coefi = 1;
            while (coefi <= 5) {
                coef_bits_latch[coefi + coef_bits_latch_offset] = coef_bits[coefi];
                if (coef_bits[coefi] != 0) {
                    smoothing_useful = true;
                }
                ++coefi;
            }
            coef_bits_latch_offset += 6;
            ++ci;
        }
        return smoothing_useful;
    }

    static void master_selection(jpeg_decompress_struct cinfo) {
        jpeg_decomp_master master = cinfo.master;
        JPEGDecoder.jpeg_calc_output_dimensions(cinfo);
        JPEGDecoder.prepare_range_limit_table(cinfo);
        long samplesperrow = (long)cinfo.output_width * (long)cinfo.out_color_components;
        int jd_samplesperrow = (int)samplesperrow;
        if ((long)jd_samplesperrow != samplesperrow) {
            JPEGDecoder.error();
        }
        master.pass_number = 0;
        master.using_merged_upsample = JPEGDecoder.use_merged_upsample(cinfo);
        master.quantizer_1pass = null;
        master.quantizer_2pass = null;
        if (!cinfo.quantize_colors || !cinfo.buffered_image) {
            cinfo.enable_1pass_quant = false;
            cinfo.enable_external_quant = false;
            cinfo.enable_2pass_quant = false;
        }
        if (cinfo.quantize_colors) {
            JPEGDecoder.error(20);
        }
        if (!cinfo.raw_data_out) {
            if (master.using_merged_upsample) {
                JPEGDecoder.error();
            } else {
                JPEGDecoder.jinit_color_deconverter(cinfo);
                JPEGDecoder.jinit_upsampler(cinfo);
            }
            JPEGDecoder.jinit_d_post_controller(cinfo, cinfo.enable_2pass_quant);
        }
        JPEGDecoder.jinit_inverse_dct(cinfo);
        if (cinfo.arith_code) {
            JPEGDecoder.error();
        } else if (cinfo.progressive_mode) {
            JPEGDecoder.jinit_phuff_decoder(cinfo);
        } else {
            JPEGDecoder.jinit_huff_decoder(cinfo);
        }
        boolean use_c_buffer = cinfo.inputctl.has_multiple_scans || cinfo.buffered_image;
        JPEGDecoder.jinit_d_coef_controller(cinfo, use_c_buffer);
        if (!cinfo.raw_data_out) {
            JPEGDecoder.jinit_d_main_controller(cinfo, false);
        }
        JPEGDecoder.start_input_pass(cinfo);
    }

    static void jinit_master_decompress(jpeg_decompress_struct cinfo) {
        jpeg_decomp_master master;
        cinfo.master = master = new jpeg_decomp_master();
        master.is_dummy_pass = false;
        JPEGDecoder.master_selection(cinfo);
    }

    static void jcopy_sample_rows(byte[][] input_array, int source_row, byte[][] output_array, int dest_row, int num_rows, int num_cols) {
        int count = num_cols;
        int input_array_offset = source_row;
        int output_array_offset = dest_row;
        int row = num_rows;
        while (row > 0) {
            byte[] inptr = input_array[input_array_offset++];
            byte[] outptr = output_array[output_array_offset++];
            System.arraycopy(inptr, 0, outptr, 0, count);
            --row;
        }
    }

    static boolean jpeg_start_decompress(jpeg_decompress_struct cinfo) {
        if (cinfo.global_state == 202) {
            JPEGDecoder.jinit_master_decompress(cinfo);
            if (cinfo.buffered_image) {
                cinfo.global_state = 207;
                return true;
            }
            cinfo.global_state = 203;
        }
        if (cinfo.global_state == 203) {
            if (cinfo.inputctl.has_multiple_scans) {
                int retcode;
                do {
                    if ((retcode = JPEGDecoder.consume_input(cinfo)) != 0) continue;
                    return false;
                } while (retcode != 2);
            }
            cinfo.output_scan_number = cinfo.input_scan_number;
        } else if (cinfo.global_state != 204) {
            JPEGDecoder.error();
        }
        return JPEGDecoder.output_pass_setup(cinfo);
    }

    static void prepare_for_output_pass(jpeg_decompress_struct cinfo) {
        jpeg_decomp_master master = cinfo.master;
        if (master.is_dummy_pass) {
            JPEGDecoder.error(20);
        } else {
            if (cinfo.quantize_colors && cinfo.colormap == null) {
                if (cinfo.two_pass_quantize && cinfo.enable_2pass_quant) {
                    cinfo.cquantize = master.quantizer_2pass;
                    master.is_dummy_pass = true;
                } else if (cinfo.enable_1pass_quant) {
                    cinfo.cquantize = master.quantizer_1pass;
                } else {
                    JPEGDecoder.error();
                }
            }
            cinfo.idct.start_pass(cinfo);
            JPEGDecoder.start_output_pass(cinfo);
            if (!cinfo.raw_data_out) {
                if (!master.using_merged_upsample) {
                    cinfo.cconvert.start_pass(cinfo);
                }
                cinfo.upsample.start_pass(cinfo);
                if (cinfo.quantize_colors) {
                    cinfo.cquantize.start_pass(cinfo, master.is_dummy_pass);
                }
                cinfo.post.start_pass(cinfo, master.is_dummy_pass ? 3 : 0);
                cinfo.main.start_pass(cinfo, 0);
            }
        }
    }

    static boolean jpeg_resync_to_restart(jpeg_decompress_struct cinfo, int desired) {
        int marker = cinfo.unread_marker;
        int action = 1;
        block5: while (true) {
            action = marker < 192 ? 2 : (marker < 208 || marker > 215 ? 3 : (marker == 208 + (desired + 1 & 7) || marker == 208 + (desired + 2 & 7) ? 3 : (marker == 208 + (desired - 1 & 7) || marker == 208 + (desired - 2 & 7) ? 2 : 1)));
            switch (action) {
                case 1: {
                    cinfo.unread_marker = 0;
                    return true;
                }
                case 2: {
                    if (!JPEGDecoder.next_marker(cinfo)) {
                        return false;
                    }
                    marker = cinfo.unread_marker;
                    continue block5;
                }
                case 3: {
                    return true;
                }
            }
        }
    }

    static boolean read_restart_marker(jpeg_decompress_struct cinfo) {
        if (cinfo.unread_marker == 0 && !JPEGDecoder.next_marker(cinfo)) {
            return false;
        }
        if (cinfo.unread_marker == 208 + cinfo.marker.next_restart_num) {
            cinfo.unread_marker = 0;
        } else if (!JPEGDecoder.jpeg_resync_to_restart(cinfo, cinfo.marker.next_restart_num)) {
            return false;
        }
        cinfo.marker.next_restart_num = cinfo.marker.next_restart_num + 1 & 7;
        return true;
    }

    static boolean jpeg_fill_bit_buffer(bitread_working_state state, int get_buffer, int bits_left, int nbits) {
        byte[] buffer = state.buffer;
        int bytes_in_buffer = state.bytes_in_buffer;
        int bytes_offset = state.bytes_offset;
        jpeg_decompress_struct cinfo = state.cinfo;
        if (cinfo.unread_marker == 0) {
            while (bits_left < 25) {
                int c;
                if (bytes_offset == bytes_in_buffer) {
                    if (!JPEGDecoder.fill_input_buffer(cinfo)) {
                        return false;
                    }
                    buffer = cinfo.buffer;
                    bytes_in_buffer = cinfo.bytes_in_buffer;
                    bytes_offset = cinfo.bytes_offset;
                }
                if ((c = buffer[bytes_offset++] & 0xFF) == 255) {
                    do {
                        if (bytes_offset != bytes_in_buffer) continue;
                        if (!JPEGDecoder.fill_input_buffer(cinfo)) {
                            return false;
                        }
                        buffer = cinfo.buffer;
                        bytes_in_buffer = cinfo.bytes_in_buffer;
                        bytes_offset = cinfo.bytes_offset;
                    } while ((c = buffer[bytes_offset++] & 0xFF) == 255);
                    if (c == 0) {
                        c = 255;
                    } else {
                        cinfo.unread_marker = c;
                        if (nbits > bits_left) {
                            if (!cinfo.entropy.insufficient_data) {
                                cinfo.entropy.insufficient_data = true;
                            }
                            get_buffer <<= 25 - bits_left;
                            bits_left = 25;
                        }
                        state.buffer = buffer;
                        state.bytes_in_buffer = bytes_in_buffer;
                        state.bytes_offset = bytes_offset;
                        state.get_buffer = get_buffer;
                        state.bits_left = bits_left;
                        return true;
                    }
                }
                get_buffer = get_buffer << 8 | c;
                bits_left += 8;
            }
        } else if (nbits > bits_left) {
            if (!cinfo.entropy.insufficient_data) {
                cinfo.entropy.insufficient_data = true;
            }
            get_buffer <<= 25 - bits_left;
            bits_left = 25;
        }
        state.buffer = buffer;
        state.bytes_in_buffer = bytes_in_buffer;
        state.bytes_offset = bytes_offset;
        state.get_buffer = get_buffer;
        state.bits_left = bits_left;
        return true;
    }

    static int jpeg_huff_decode(bitread_working_state state, int get_buffer, int bits_left, d_derived_tbl htbl, int min_bits) {
        int l = min_bits;
        if (bits_left < l) {
            if (!JPEGDecoder.jpeg_fill_bit_buffer(state, get_buffer, bits_left, l)) {
                return -1;
            }
            get_buffer = state.get_buffer;
            bits_left = state.bits_left;
        }
        int code = get_buffer >> (bits_left -= l) & (1 << l) - 1;
        while (code > htbl.maxcode[l]) {
            code <<= 1;
            if (bits_left < 1) {
                if (!JPEGDecoder.jpeg_fill_bit_buffer(state, get_buffer, bits_left, 1)) {
                    return -1;
                }
                get_buffer = state.get_buffer;
                bits_left = state.bits_left;
            }
            code |= get_buffer >> --bits_left & 1;
            ++l;
        }
        state.get_buffer = get_buffer;
        state.bits_left = bits_left;
        if (l > 16) {
            return 0;
        }
        return htbl.pub.huffval[code + htbl.valoffset[l]] & 0xFF;
    }

    static int decompress_onepass(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset) {
        jpeg_d_coef_controller coef = cinfo.coef;
        int last_MCU_col = cinfo.MCUs_per_row - 1;
        int last_iMCU_row = cinfo.total_iMCU_rows - 1;
        int yoffset = coef.MCU_vert_offset;
        while (yoffset < coef.MCU_rows_per_iMCU_row) {
            int MCU_col_num = coef.MCU_ctr;
            while (MCU_col_num <= last_MCU_col) {
                int i = 0;
                while (i < cinfo.blocks_in_MCU) {
                    short[] blk = coef.MCU_buffer[i];
                    int j = 0;
                    while (j < blk.length) {
                        blk[j] = 0;
                        ++j;
                    }
                    ++i;
                }
                if (!cinfo.entropy.decode_mcu(cinfo, coef.MCU_buffer)) {
                    coef.MCU_vert_offset = yoffset;
                    coef.MCU_ctr = MCU_col_num;
                    return 0;
                }
                int blkn = 0;
                int ci = 0;
                while (ci < cinfo.comps_in_scan) {
                    jpeg_component_info compptr = cinfo.cur_comp_info[ci];
                    if (!compptr.component_needed) {
                        blkn += compptr.MCU_blocks;
                    } else {
                        int useful_width = MCU_col_num < last_MCU_col ? compptr.MCU_width : compptr.last_col_width;
                        byte[][] output_ptr = output_buf[compptr.component_index];
                        int output_ptr_offset = output_buf_offset[compptr.component_index] + yoffset * compptr.DCT_scaled_size;
                        int start_col = MCU_col_num * compptr.MCU_sample_width;
                        int yindex = 0;
                        while (yindex < compptr.MCU_height) {
                            if (cinfo.input_iMCU_row < last_iMCU_row || yoffset + yindex < compptr.last_row_height) {
                                int output_col = start_col;
                                int xindex = 0;
                                while (xindex < useful_width) {
                                    JPEGDecoder.jpeg_idct_islow(cinfo, compptr, coef.MCU_buffer[blkn + xindex], output_ptr, output_ptr_offset, output_col);
                                    output_col += compptr.DCT_scaled_size;
                                    ++xindex;
                                }
                            }
                            blkn += compptr.MCU_width;
                            output_ptr_offset += compptr.DCT_scaled_size;
                            ++yindex;
                        }
                    }
                    ++ci;
                }
                ++MCU_col_num;
            }
            coef.MCU_ctr = 0;
            ++yoffset;
        }
        ++cinfo.output_iMCU_row;
        if (++cinfo.input_iMCU_row < cinfo.total_iMCU_rows) {
            coef.start_iMCU_row(cinfo);
            return 3;
        }
        JPEGDecoder.finish_input_pass(cinfo);
        return 4;
    }

    static int decompress_smooth_data(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset) {
        jpeg_d_coef_controller coef = cinfo.coef;
        int last_iMCU_row = cinfo.total_iMCU_rows - 1;
        short[] workspace = coef.workspace;
        if (workspace == null) {
            workspace = coef.workspace = new short[64];
        }
        while (cinfo.input_scan_number <= cinfo.output_scan_number && !cinfo.inputctl.eoi_reached) {
            if (cinfo.input_scan_number == cinfo.output_scan_number) {
                int delta;
                int n = delta = cinfo.Ss == 0 ? 1 : 0;
                if (cinfo.input_iMCU_row > cinfo.output_iMCU_row + delta) break;
            }
            if (JPEGDecoder.consume_input(cinfo) != 0) continue;
            return 0;
        }
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            if (compptr.component_needed) {
                boolean first_row;
                int buffer_offset;
                short[][][] buffer;
                boolean last_row;
                int block_rows;
                if (cinfo.output_iMCU_row < last_iMCU_row) {
                    block_rows = compptr.v_samp_factor;
                    last_row = false;
                } else {
                    block_rows = compptr.height_in_blocks % compptr.v_samp_factor;
                    if (block_rows == 0) {
                        block_rows = compptr.v_samp_factor;
                    }
                    last_row = true;
                }
                if (cinfo.output_iMCU_row > 0) {
                    buffer = coef.whole_image[ci];
                    buffer_offset = (cinfo.output_iMCU_row - 1) * compptr.v_samp_factor;
                    buffer_offset += compptr.v_samp_factor;
                    first_row = false;
                } else {
                    buffer = coef.whole_image[ci];
                    buffer_offset = 0;
                    first_row = true;
                }
                int[] coef_bits = coef.coef_bits_latch;
                int coef_offset = ci * 6;
                JQUANT_TBL quanttbl = compptr.quant_table;
                short Q00 = quanttbl.quantval[0];
                short Q01 = quanttbl.quantval[1];
                short Q10 = quanttbl.quantval[8];
                short Q20 = quanttbl.quantval[16];
                short Q11 = quanttbl.quantval[9];
                short Q02 = quanttbl.quantval[2];
                byte[][] output_ptr = output_buf[ci];
                int output_ptr_offset = output_buf_offset[ci];
                int block_row = 0;
                while (block_row < block_rows) {
                    short DC9;
                    short DC6;
                    short DC3;
                    short[][] next_block_row;
                    short[][] prev_block_row;
                    short[][] buffer_ptr = buffer[block_row + buffer_offset];
                    int buffer_ptr_offset = 0;
                    int prev_block_row_offset = 0;
                    int next_block_row_offset = 0;
                    if (first_row && block_row == 0) {
                        prev_block_row = buffer_ptr;
                        prev_block_row_offset = buffer_ptr_offset;
                    } else {
                        prev_block_row = buffer[block_row - 1 + buffer_offset];
                        prev_block_row_offset = 0;
                    }
                    if (last_row && block_row == block_rows - 1) {
                        next_block_row = buffer_ptr;
                        next_block_row_offset = buffer_ptr_offset;
                    } else {
                        next_block_row = buffer[block_row + 1 + buffer_offset];
                        next_block_row_offset = 0;
                    }
                    short DC2 = DC3 = prev_block_row[0 + prev_block_row_offset][0];
                    short DC1 = DC3;
                    short DC5 = DC6 = buffer_ptr[0 + buffer_ptr_offset][0];
                    short DC4 = DC6;
                    short DC8 = DC9 = next_block_row[0 + next_block_row_offset][0];
                    short DC7 = DC9;
                    int output_col = 0;
                    int last_block_column = compptr.width_in_blocks - 1;
                    int block_num = 0;
                    while (block_num <= last_block_column) {
                        int pred;
                        int num;
                        int Al;
                        System.arraycopy(buffer_ptr[buffer_ptr_offset], 0, workspace, 0, workspace.length);
                        if (block_num < last_block_column) {
                            DC3 = prev_block_row[1 + prev_block_row_offset][0];
                            DC6 = buffer_ptr[1 + buffer_ptr_offset][0];
                            DC9 = next_block_row[1 + next_block_row_offset][0];
                        }
                        if ((Al = coef_bits[1 + coef_offset]) != 0 && workspace[1] == 0) {
                            num = 36 * Q00 * (DC4 - DC6);
                            if (num >= 0) {
                                pred = ((Q01 << 7) + num) / (Q01 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                            } else {
                                pred = ((Q01 << 7) - num) / (Q01 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                                pred = -pred;
                            }
                            workspace[1] = (short)pred;
                        }
                        if ((Al = coef_bits[2 + coef_offset]) != 0 && workspace[8] == 0) {
                            num = 36 * Q00 * (DC2 - DC8);
                            if (num >= 0) {
                                pred = ((Q10 << 7) + num) / (Q10 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                            } else {
                                pred = ((Q10 << 7) - num) / (Q10 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                                pred = -pred;
                            }
                            workspace[8] = (short)pred;
                        }
                        if ((Al = coef_bits[3 + coef_offset]) != 0 && workspace[16] == 0) {
                            num = 9 * Q00 * (DC2 + DC8 - 2 * DC5);
                            if (num >= 0) {
                                pred = ((Q20 << 7) + num) / (Q20 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                            } else {
                                pred = ((Q20 << 7) - num) / (Q20 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                                pred = -pred;
                            }
                            workspace[16] = (short)pred;
                        }
                        if ((Al = coef_bits[4 + coef_offset]) != 0 && workspace[9] == 0) {
                            num = 5 * Q00 * (DC1 - DC3 - DC7 + DC9);
                            if (num >= 0) {
                                pred = ((Q11 << 7) + num) / (Q11 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                            } else {
                                pred = ((Q11 << 7) - num) / (Q11 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                                pred = -pred;
                            }
                            workspace[9] = (short)pred;
                        }
                        if ((Al = coef_bits[5 + coef_offset]) != 0 && workspace[2] == 0) {
                            num = 9 * Q00 * (DC4 + DC6 - 2 * DC5);
                            if (num >= 0) {
                                pred = ((Q02 << 7) + num) / (Q02 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                            } else {
                                pred = ((Q02 << 7) - num) / (Q02 << 8);
                                if (Al > 0 && pred >= 1 << Al) {
                                    pred = (1 << Al) - 1;
                                }
                                pred = -pred;
                            }
                            workspace[2] = (short)pred;
                        }
                        JPEGDecoder.jpeg_idct_islow(cinfo, compptr, workspace, output_ptr, output_ptr_offset, output_col);
                        DC1 = DC2;
                        DC2 = DC3;
                        DC4 = DC5;
                        DC5 = DC6;
                        DC7 = DC8;
                        DC8 = DC9;
                        ++buffer_ptr_offset;
                        ++prev_block_row_offset;
                        ++next_block_row_offset;
                        output_col += compptr.DCT_scaled_size;
                        ++block_num;
                    }
                    output_ptr_offset += compptr.DCT_scaled_size;
                    ++block_row;
                }
            }
            ++ci;
        }
        if (++cinfo.output_iMCU_row < cinfo.total_iMCU_rows) {
            return 3;
        }
        return 4;
    }

    static int decompress_data(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset) {
        jpeg_d_coef_controller coef = cinfo.coef;
        int last_iMCU_row = cinfo.total_iMCU_rows - 1;
        while (cinfo.input_scan_number < cinfo.output_scan_number || cinfo.input_scan_number == cinfo.output_scan_number && cinfo.input_iMCU_row <= cinfo.output_iMCU_row) {
            if (JPEGDecoder.consume_input(cinfo) != 0) continue;
            return 0;
        }
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            if (compptr.component_needed) {
                int block_rows;
                short[][][] buffer = coef.whole_image[ci];
                int buffer_offset = cinfo.output_iMCU_row * compptr.v_samp_factor;
                if (cinfo.output_iMCU_row < last_iMCU_row) {
                    block_rows = compptr.v_samp_factor;
                } else {
                    block_rows = compptr.height_in_blocks % compptr.v_samp_factor;
                    if (block_rows == 0) {
                        block_rows = compptr.v_samp_factor;
                    }
                }
                byte[][] output_ptr = output_buf[ci];
                int output_ptr_offset = output_buf_offset[ci];
                int block_row = 0;
                while (block_row < block_rows) {
                    short[][] buffer_ptr = buffer[block_row + buffer_offset];
                    int buffer_ptr_offset = 0;
                    int output_col = 0;
                    int block_num = 0;
                    while (block_num < compptr.width_in_blocks) {
                        JPEGDecoder.jpeg_idct_islow(cinfo, compptr, buffer_ptr[buffer_ptr_offset], output_ptr, output_ptr_offset, output_col);
                        ++buffer_ptr_offset;
                        output_col += compptr.DCT_scaled_size;
                        ++block_num;
                    }
                    output_ptr_offset += compptr.DCT_scaled_size;
                    ++block_row;
                }
            }
            ++ci;
        }
        if (++cinfo.output_iMCU_row < cinfo.total_iMCU_rows) {
            return 3;
        }
        return 4;
    }

    static void post_process_data(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        JPEGDecoder.upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail);
    }

    static void set_bottom_pointers(jpeg_decompress_struct cinfo) {
        jpeg_d_main_controller main = cinfo.main;
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int iMCUheight = compptr.v_samp_factor * compptr.DCT_scaled_size;
            int rgroup = iMCUheight / cinfo.min_DCT_scaled_size;
            int rows_left = compptr.downsampled_height % iMCUheight;
            if (rows_left == 0) {
                rows_left = iMCUheight;
            }
            if (ci == 0) {
                main.rowgroups_avail = (rows_left - 1) / rgroup + 1;
            }
            byte[][] xbuf = main.xbuffer[main.whichptr][ci];
            int xbuf_offset = main.xbuffer_offset[main.whichptr][ci];
            int i = 0;
            while (i < rgroup * 2) {
                xbuf[rows_left + i + xbuf_offset] = xbuf[rows_left - 1 + xbuf_offset];
                ++i;
            }
            ++ci;
        }
    }

    static void set_wraparound_pointers(jpeg_decompress_struct cinfo) {
        jpeg_d_main_controller main = cinfo.main;
        int M = cinfo.min_DCT_scaled_size;
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci];
            int rgroup = compptr.v_samp_factor * compptr.DCT_scaled_size / cinfo.min_DCT_scaled_size;
            byte[][] xbuf0 = main.xbuffer[0][ci];
            int xbuf0_offset = main.xbuffer_offset[0][ci];
            byte[][] xbuf1 = main.xbuffer[1][ci];
            int xbuf1_offset = main.xbuffer_offset[1][ci];
            int i = 0;
            while (i < rgroup) {
                xbuf0[i - rgroup + xbuf0_offset] = xbuf0[rgroup * (M + 1) + i + xbuf0_offset];
                xbuf1[i - rgroup + xbuf1_offset] = xbuf1[rgroup * (M + 1) + i + xbuf1_offset];
                xbuf0[rgroup * (M + 2) + i + xbuf0_offset] = xbuf0[i + xbuf0_offset];
                xbuf1[rgroup * (M + 2) + i + xbuf1_offset] = xbuf1[i + xbuf1_offset];
                ++i;
            }
            ++ci;
        }
    }

    static void process_data_crank_post(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        JPEGDecoder.error();
    }

    static void process_data_context_main(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        jpeg_d_main_controller main = cinfo.main;
        if (!main.buffer_full) {
            int result;
            switch (cinfo.coef.decompress_data) {
                case 0: {
                    result = JPEGDecoder.decompress_data(cinfo, main.xbuffer[main.whichptr], main.xbuffer_offset[main.whichptr]);
                    break;
                }
                case 1: {
                    result = JPEGDecoder.decompress_smooth_data(cinfo, main.xbuffer[main.whichptr], main.xbuffer_offset[main.whichptr]);
                    break;
                }
                case 2: {
                    result = JPEGDecoder.decompress_onepass(cinfo, main.xbuffer[main.whichptr], main.xbuffer_offset[main.whichptr]);
                    break;
                }
                default: {
                    result = 0;
                }
            }
            if (result == 0) {
                return;
            }
            main.buffer_full = true;
            ++main.iMCU_row_ctr;
        }
        switch (main.context_state) {
            case 2: {
                JPEGDecoder.post_process_data(cinfo, main.xbuffer[main.whichptr], main.xbuffer_offset[main.whichptr], main.rowgroup_ctr, main.rowgroups_avail, output_buf, out_row_ctr, out_rows_avail);
                if (main.rowgroup_ctr[0] < main.rowgroups_avail) {
                    return;
                }
                main.context_state = 0;
                if (out_row_ctr[0] >= out_rows_avail) {
                    return;
                }
            }
            case 0: {
                main.rowgroup_ctr[0] = 0;
                main.rowgroups_avail = cinfo.min_DCT_scaled_size - 1;
                if (main.iMCU_row_ctr == cinfo.total_iMCU_rows) {
                    JPEGDecoder.set_bottom_pointers(cinfo);
                }
                main.context_state = 1;
            }
            case 1: {
                JPEGDecoder.post_process_data(cinfo, main.xbuffer[main.whichptr], main.xbuffer_offset[main.whichptr], main.rowgroup_ctr, main.rowgroups_avail, output_buf, out_row_ctr, out_rows_avail);
                if (main.rowgroup_ctr[0] < main.rowgroups_avail) {
                    return;
                }
                if (main.iMCU_row_ctr == 1) {
                    JPEGDecoder.set_wraparound_pointers(cinfo);
                }
                main.whichptr ^= 1;
                main.buffer_full = false;
                main.rowgroup_ctr[0] = cinfo.min_DCT_scaled_size + 1;
                main.rowgroups_avail = cinfo.min_DCT_scaled_size + 2;
                main.context_state = 2;
            }
        }
    }

    static void process_data_simple_main(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        jpeg_d_main_controller main = cinfo.main;
        if (!main.buffer_full) {
            int result;
            switch (cinfo.coef.decompress_data) {
                case 0: {
                    result = JPEGDecoder.decompress_data(cinfo, main.buffer, main.buffer_offset);
                    break;
                }
                case 1: {
                    result = JPEGDecoder.decompress_smooth_data(cinfo, main.buffer, main.buffer_offset);
                    break;
                }
                case 2: {
                    result = JPEGDecoder.decompress_onepass(cinfo, main.buffer, main.buffer_offset);
                    break;
                }
                default: {
                    result = 0;
                }
            }
            if (result == 0) {
                return;
            }
            main.buffer_full = true;
        }
        int rowgroups_avail = cinfo.min_DCT_scaled_size;
        JPEGDecoder.post_process_data(cinfo, main.buffer, main.buffer_offset, main.rowgroup_ctr, rowgroups_avail, output_buf, out_row_ctr, out_rows_avail);
        if (main.rowgroup_ctr[0] >= rowgroups_avail) {
            main.buffer_full = false;
            main.rowgroup_ctr[0] = 0;
        }
    }

    static int jpeg_read_scanlines(jpeg_decompress_struct cinfo, byte[][] scanlines, int max_lines) {
        if (cinfo.global_state != 205) {
            JPEGDecoder.error();
        }
        if (cinfo.output_scanline >= cinfo.output_height) {
            return 0;
        }
        cinfo.row_ctr[0] = 0;
        switch (cinfo.main.process_data) {
            case 0: {
                JPEGDecoder.process_data_simple_main(cinfo, scanlines, cinfo.row_ctr, max_lines);
                break;
            }
            case 1: {
                JPEGDecoder.process_data_context_main(cinfo, scanlines, cinfo.row_ctr, max_lines);
                break;
            }
            case 2: {
                JPEGDecoder.process_data_crank_post(cinfo, scanlines, cinfo.row_ctr, max_lines);
                break;
            }
            default: {
                JPEGDecoder.error();
            }
        }
        cinfo.output_scanline += cinfo.row_ctr[0];
        return cinfo.row_ctr[0];
    }

    static boolean output_pass_setup(jpeg_decompress_struct cinfo) {
        if (cinfo.global_state != 204) {
            JPEGDecoder.prepare_for_output_pass(cinfo);
            cinfo.output_scanline = 0;
            cinfo.global_state = 204;
        }
        while (cinfo.master.is_dummy_pass) {
            JPEGDecoder.error();
        }
        cinfo.global_state = cinfo.raw_data_out ? 206 : 205;
        return true;
    }

    static boolean get_dht(jpeg_decompress_struct cinfo) {
        byte[] bits = new byte[17];
        byte[] huffval = new byte[256];
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        length -= 2;
        while (length > 16) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int index = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            bits[0] = 0;
            int count = 0;
            int i = 1;
            while (i <= 16) {
                if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                    JPEGDecoder.fill_input_buffer(cinfo);
                }
                bits[i] = cinfo.buffer[cinfo.bytes_offset++];
                count += bits[i] & 0xFF;
                ++i;
            }
            if (count > 256 || count > (length -= 17)) {
                JPEGDecoder.error();
            }
            i = 0;
            while (i < count) {
                if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                    JPEGDecoder.fill_input_buffer(cinfo);
                }
                huffval[i] = cinfo.buffer[cinfo.bytes_offset++];
                ++i;
            }
            length -= count;
            JHUFF_TBL htblptr = (index & 0x10) != 0 ? (cinfo.ac_huff_tbl_ptrs[index -= 16] = new JHUFF_TBL()) : (cinfo.dc_huff_tbl_ptrs[index] = new JHUFF_TBL());
            if (index < 0 || index >= 4) {
                JPEGDecoder.error();
            }
            System.arraycopy(bits, 0, htblptr.bits, 0, bits.length);
            System.arraycopy(huffval, 0, htblptr.huffval, 0, huffval.length);
        }
        if (length != 0) {
            JPEGDecoder.error();
        }
        return true;
    }

    static boolean get_dqt(jpeg_decompress_struct cinfo) {
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        length -= 2;
        while (length > 0) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int n = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            int prec = n >> 4;
            if ((n &= 0xF) >= 4) {
                JPEGDecoder.error();
            }
            if (cinfo.quant_tbl_ptrs[n] == null) {
                cinfo.quant_tbl_ptrs[n] = new JQUANT_TBL();
            }
            JQUANT_TBL quant_ptr = cinfo.quant_tbl_ptrs[n];
            int i = 0;
            while (i < 64) {
                int tmp;
                if (prec != 0) {
                    if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                        JPEGDecoder.fill_input_buffer(cinfo);
                    }
                    tmp = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
                    if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                        JPEGDecoder.fill_input_buffer(cinfo);
                    }
                    tmp |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
                } else {
                    if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                        JPEGDecoder.fill_input_buffer(cinfo);
                    }
                    tmp = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
                }
                quant_ptr.quantval[JPEGDecoder.jpeg_natural_order[i]] = (short)tmp;
                ++i;
            }
            length -= 65;
            if (prec == 0) continue;
            length -= 64;
        }
        if (length != 0) {
            JPEGDecoder.error();
        }
        return true;
    }

    static boolean get_dri(jpeg_decompress_struct cinfo) {
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        if ((length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF) != 4) {
            JPEGDecoder.error();
        }
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int tmp = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.restart_interval = tmp |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        return true;
    }

    static boolean get_dac(jpeg_decompress_struct cinfo) {
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        length -= 2;
        while (length > 0) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int index = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int val = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            length -= 2;
            if (index < 0 || index >= 32) {
                JPEGDecoder.error();
            }
            if (index >= 16) {
                cinfo.arith_ac_K[index - 16] = (byte)val;
                continue;
            }
            cinfo.arith_dc_L[index] = (byte)(val & 0xF);
            cinfo.arith_dc_U[index] = (byte)(val >> 4);
            if (cinfo.arith_dc_L[index] <= cinfo.arith_dc_U[index]) continue;
            JPEGDecoder.error();
        }
        if (length != 0) {
            JPEGDecoder.error();
        }
        return true;
    }

    static boolean get_sos(jpeg_decompress_struct cinfo) {
        int c;
        int n;
        jpeg_component_info compptr = null;
        if (!cinfo.marker.saw_SOF) {
            JPEGDecoder.error();
        }
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        if (length != (n = cinfo.buffer[cinfo.bytes_offset++] & 0xFF) * 2 + 6 || n < 1 || n > 4) {
            JPEGDecoder.error();
        }
        cinfo.comps_in_scan = n;
        int i = 0;
        while (i < n) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int cc = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            int ci = 0;
            while (ci < cinfo.num_components) {
                compptr = cinfo.comp_info[ci];
                if (cc == compptr.component_id) break;
                ++ci;
            }
            if (ci == cinfo.num_components) {
                JPEGDecoder.error();
            }
            cinfo.cur_comp_info[i] = compptr;
            compptr.dc_tbl_no = c >> 4 & 0xF;
            compptr.ac_tbl_no = c & 0xF;
            ++i;
        }
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.Ss = c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.Se = c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        cinfo.Ah = c >> 4 & 0xF;
        cinfo.Al = c & 0xF;
        cinfo.marker.next_restart_num = 0;
        ++cinfo.input_scan_number;
        return true;
    }

    static boolean get_sof(jpeg_decompress_struct cinfo, boolean is_prog, boolean is_arith) {
        cinfo.progressive_mode = is_prog;
        cinfo.arith_code = is_arith;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.data_precision = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.image_height = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.image_height |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.image_width = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.image_width |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        cinfo.num_components = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        length -= 8;
        if (cinfo.marker.saw_SOF) {
            JPEGDecoder.error();
        }
        if (cinfo.image_height <= 0 || cinfo.image_width <= 0 || cinfo.num_components <= 0) {
            JPEGDecoder.error();
        }
        if (length != cinfo.num_components * 3) {
            JPEGDecoder.error();
        }
        if (cinfo.comp_info == null) {
            cinfo.comp_info = new jpeg_component_info[cinfo.num_components];
        }
        int ci = 0;
        while (ci < cinfo.num_components) {
            jpeg_component_info compptr = cinfo.comp_info[ci] = new jpeg_component_info();
            compptr.component_index = ci;
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            compptr.component_id = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            int c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            compptr.h_samp_factor = c >> 4 & 0xF;
            compptr.v_samp_factor = c & 0xF;
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            compptr.quant_tbl_no = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            ++ci;
        }
        cinfo.marker.saw_SOF = true;
        return true;
    }

    static void sep_upsample(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail) {
        int num_rows;
        jpeg_upsampler upsample = cinfo.upsample;
        if (upsample.next_row_out >= cinfo.max_v_samp_factor) {
            int ci = 0;
            while (ci < cinfo.num_components) {
                jpeg_component_info compptr = cinfo.comp_info[ci];
                int offset = input_buf_offset[ci] + in_row_group_ctr[0] * upsample.rowgroup_height[ci];
                switch (upsample.methods[ci]) {
                    case 0: {
                        JPEGDecoder.noop_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 1: {
                        JPEGDecoder.fullsize_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 2: {
                        JPEGDecoder.h2v1_fancy_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 3: {
                        JPEGDecoder.h2v1_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 4: {
                        JPEGDecoder.h2v2_fancy_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 5: {
                        JPEGDecoder.h2v2_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                        break;
                    }
                    case 6: {
                        JPEGDecoder.int_upsample(cinfo, compptr, input_buf[ci], offset, upsample.color_buf, upsample.color_buf_offset, ci);
                    }
                }
                ++ci;
            }
            upsample.next_row_out = 0;
        }
        if ((num_rows = cinfo.max_v_samp_factor - upsample.next_row_out) > upsample.rows_to_go) {
            num_rows = upsample.rows_to_go;
        }
        if (num_rows > (out_rows_avail -= out_row_ctr[0])) {
            num_rows = out_rows_avail;
        }
        switch (cinfo.cconvert.color_convert) {
            case 0: {
                JPEGDecoder.null_convert(cinfo, upsample.color_buf, upsample.color_buf_offset, upsample.next_row_out, output_buf, out_row_ctr[0], num_rows);
                break;
            }
            case 1: {
                JPEGDecoder.grayscale_convert(cinfo, upsample.color_buf, upsample.color_buf_offset, upsample.next_row_out, output_buf, out_row_ctr[0], num_rows);
                break;
            }
            case 2: {
                JPEGDecoder.ycc_rgb_convert(cinfo, upsample.color_buf, upsample.color_buf_offset, upsample.next_row_out, output_buf, out_row_ctr[0], num_rows);
                break;
            }
            case 3: {
                JPEGDecoder.gray_rgb_convert(cinfo, upsample.color_buf, upsample.color_buf_offset, upsample.next_row_out, output_buf, out_row_ctr[0], num_rows);
                break;
            }
            case 4: {
                JPEGDecoder.error();
            }
        }
        out_row_ctr[0] = out_row_ctr[0] + num_rows;
        upsample.rows_to_go -= num_rows;
        upsample.next_row_out += num_rows;
        if (upsample.next_row_out >= cinfo.max_v_samp_factor) {
            in_row_group_ctr[0] = in_row_group_ctr[0] + 1;
        }
    }

    static void noop_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        output_data_ptr[output_data_index] = null;
    }

    static void fullsize_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        output_data_ptr[output_data_index] = input_data;
        output_data_offset[output_data_index] = input_data_offset;
    }

    static void h2v1_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        byte[][] output_data = output_data_ptr[output_data_index];
        output_data_offset[output_data_index] = 0;
        int inrow = 0;
        while (inrow < cinfo.max_v_samp_factor) {
            byte[] inptr = input_data[inrow + input_data_offset];
            byte[] outptr = output_data[inrow];
            int inptr_offset = 0;
            int outptr_offset = 0;
            int outend = outptr_offset + cinfo.output_width;
            while (outptr_offset < outend) {
                byte invalue = inptr[inptr_offset++];
                outptr[outptr_offset++] = invalue;
                outptr[outptr_offset++] = invalue;
            }
            ++inrow;
        }
    }

    static void h2v2_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        byte[][] output_data = output_data_ptr[output_data_index];
        output_data_offset[output_data_index] = 0;
        int outrow = 0;
        int inrow = 0;
        while (outrow < cinfo.max_v_samp_factor) {
            byte[] inptr = input_data[inrow + input_data_offset];
            byte[] outptr = output_data[outrow];
            int inptr_offset = 0;
            int outptr_offset = 0;
            int outend = outptr_offset + cinfo.output_width;
            while (outptr_offset < outend) {
                byte invalue = inptr[inptr_offset++];
                outptr[outptr_offset++] = invalue;
                outptr[outptr_offset++] = invalue;
            }
            JPEGDecoder.jcopy_sample_rows(output_data, outrow, output_data, outrow + 1, 1, cinfo.output_width);
            ++inrow;
            outrow += 2;
        }
    }

    static void h2v1_fancy_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        byte[][] output_data = output_data_ptr[output_data_index];
        output_data_offset[output_data_index] = 0;
        int inrow = 0;
        while (inrow < cinfo.max_v_samp_factor) {
            byte[] inptr = input_data[inrow + input_data_offset];
            byte[] outptr = output_data[inrow];
            int inptr_offset = 0;
            int outptr_offset = 0;
            int invalue = inptr[inptr_offset++] & 0xFF;
            outptr[outptr_offset++] = (byte)invalue;
            outptr[outptr_offset++] = (byte)(invalue * 3 + (inptr[inptr_offset] & 0xFF) + 2 >> 2);
            int colctr = compptr.downsampled_width - 2;
            while (colctr > 0) {
                invalue = (inptr[inptr_offset++] & 0xFF) * 3;
                outptr[outptr_offset++] = (byte)(invalue + (inptr[inptr_offset - 2] & 0xFF) + 1 >> 2);
                outptr[outptr_offset++] = (byte)(invalue + (inptr[inptr_offset] & 0xFF) + 2 >> 2);
                --colctr;
            }
            invalue = inptr[inptr_offset] & 0xFF;
            outptr[outptr_offset++] = (byte)(invalue * 3 + (inptr[inptr_offset - 1] & 0xFF) + 1 >> 2);
            outptr[outptr_offset++] = (byte)invalue;
            ++inrow;
        }
    }

    static void h2v2_fancy_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        byte[][] output_data = output_data_ptr[output_data_index];
        output_data_offset[output_data_index] = 0;
        int outrow = 0;
        int inrow = 0;
        while (outrow < cinfo.max_v_samp_factor) {
            int v = 0;
            while (v < 2) {
                byte[] inptr0 = input_data[inrow + input_data_offset];
                byte[] inptr1 = v == 0 ? input_data[inrow - 1 + input_data_offset] : input_data[inrow + 1 + input_data_offset];
                byte[] outptr = output_data[outrow++];
                int inptr0_offset = 0;
                int inptr1_offset = 0;
                int outptr_offset = 0;
                int thiscolsum = (inptr0[inptr0_offset++] & 0xFF) * 3 + (inptr1[inptr1_offset++] & 0xFF);
                int nextcolsum = (inptr0[inptr0_offset++] & 0xFF) * 3 + (inptr1[inptr1_offset++] & 0xFF);
                outptr[outptr_offset++] = (byte)(thiscolsum * 4 + 8 >> 4);
                outptr[outptr_offset++] = (byte)(thiscolsum * 3 + nextcolsum + 7 >> 4);
                int lastcolsum = thiscolsum;
                thiscolsum = nextcolsum;
                int colctr = compptr.downsampled_width - 2;
                while (colctr > 0) {
                    nextcolsum = (inptr0[inptr0_offset++] & 0xFF) * 3 + (inptr1[inptr1_offset++] & 0xFF);
                    outptr[outptr_offset++] = (byte)(thiscolsum * 3 + lastcolsum + 8 >> 4);
                    outptr[outptr_offset++] = (byte)(thiscolsum * 3 + nextcolsum + 7 >> 4);
                    lastcolsum = thiscolsum;
                    thiscolsum = nextcolsum;
                    --colctr;
                }
                outptr[outptr_offset++] = (byte)(thiscolsum * 3 + lastcolsum + 8 >> 4);
                outptr[outptr_offset++] = (byte)(thiscolsum * 4 + 7 >> 4);
                ++v;
            }
            ++inrow;
        }
    }

    static void int_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index) {
        jpeg_upsampler upsample = cinfo.upsample;
        byte[][] output_data = output_data_ptr[output_data_index];
        output_data_offset[output_data_index] = 0;
        int h_expand = upsample.h_expand[compptr.component_index];
        byte v_expand = upsample.v_expand[compptr.component_index];
        int outrow = 0;
        int inrow = 0;
        while (outrow < cinfo.max_v_samp_factor) {
            byte[] inptr = input_data[inrow + input_data_offset];
            int inptr_offset = 0;
            byte[] outptr = output_data[outrow];
            int outptr_offset = 0;
            int outend = outptr_offset + cinfo.output_width;
            while (outptr_offset < outend) {
                byte invalue = inptr[inptr_offset++];
                int h = h_expand;
                while (h > 0) {
                    outptr[outptr_offset++] = invalue;
                    --h;
                }
            }
            if (v_expand > 1) {
                JPEGDecoder.jcopy_sample_rows(output_data, outrow, output_data, outrow + 1, v_expand - 1, cinfo.output_width);
            }
            ++inrow;
            outrow += v_expand;
        }
    }

    static void null_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows) {
        int num_components = cinfo.num_components;
        int num_cols = cinfo.output_width;
        while (--num_rows >= 0) {
            int ci = 0;
            while (ci < num_components) {
                byte[] inptr = input_buf[ci][input_row + input_buf_offset[0]];
                byte[] outptr = output_buf[output_buf_offset];
                int offset = 0;
                switch (ci) {
                    case 2: {
                        offset = 0;
                        break;
                    }
                    case 1: {
                        offset = 1;
                        break;
                    }
                    case 0: {
                        offset = 2;
                    }
                }
                int outptr_offset = offset;
                int inptr_offset = 0;
                int count = num_cols;
                while (count > 0) {
                    outptr[outptr_offset] = inptr[inptr_offset++];
                    outptr_offset += num_components;
                    --count;
                }
                ++ci;
            }
            ++input_row;
            ++output_buf_offset;
        }
    }

    static void grayscale_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows) {
        JPEGDecoder.jcopy_sample_rows(input_buf[0], input_row + input_buf_offset[0], output_buf, output_buf_offset, num_rows, cinfo.output_width);
    }

    static void gray_rgb_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows) {
        int num_cols = cinfo.output_width;
        while (--num_rows >= 0) {
            byte[] inptr = input_buf[0][input_row++ + input_buf_offset[0]];
            byte[] outptr = output_buf[output_buf_offset++];
            int outptr_offset = 0;
            int col = 0;
            while (col < num_cols) {
                byte by = inptr[col];
                outptr[0 + outptr_offset] = by;
                outptr[1 + outptr_offset] = by;
                outptr[2 + outptr_offset] = by;
                outptr_offset += 3;
                ++col;
            }
        }
    }

    static void ycc_rgb_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows) {
        jpeg_color_deconverter cconvert = cinfo.cconvert;
        int num_cols = cinfo.output_width;
        byte[] range_limit = cinfo.sample_range_limit;
        int range_limit_offset = cinfo.sample_range_limit_offset;
        int[] Crrtab = cconvert.Cr_r_tab;
        int[] Cbbtab = cconvert.Cb_b_tab;
        int[] Crgtab = cconvert.Cr_g_tab;
        int[] Cbgtab = cconvert.Cb_g_tab;
        while (--num_rows >= 0) {
            byte[] inptr0 = input_buf[0][input_row + input_buf_offset[0]];
            byte[] inptr1 = input_buf[1][input_row + input_buf_offset[1]];
            byte[] inptr2 = input_buf[2][input_row + input_buf_offset[2]];
            ++input_row;
            byte[] outptr = output_buf[output_buf_offset++];
            int outptr_offset = 0;
            int col = 0;
            while (col < num_cols) {
                int y = inptr0[col] & 0xFF;
                int cb = inptr1[col] & 0xFF;
                int cr = inptr2[col] & 0xFF;
                outptr[outptr_offset + 2] = range_limit[y + Crrtab[cr] + range_limit_offset];
                outptr[outptr_offset + 1] = range_limit[y + (Cbgtab[cb] + Crgtab[cr] >> 16) + range_limit_offset];
                outptr[outptr_offset + 0] = range_limit[y + Cbbtab[cb] + range_limit_offset];
                outptr_offset += 3;
                ++col;
            }
        }
    }

    static boolean process_APPn(int n, jpeg_decompress_struct cinfo) {
        if (n == 0 || n == 14) {
            return JPEGDecoder.get_interesting_appn(cinfo);
        }
        return JPEGDecoder.skip_variable(cinfo);
    }

    static boolean process_COM(jpeg_decompress_struct cinfo) {
        return JPEGDecoder.skip_variable(cinfo);
    }

    static void skip_input_data(jpeg_decompress_struct cinfo, int num_bytes) {
        if (num_bytes > 0) {
            while (num_bytes > cinfo.bytes_in_buffer - cinfo.bytes_offset) {
                num_bytes -= cinfo.bytes_in_buffer - cinfo.bytes_offset;
                if (JPEGDecoder.fill_input_buffer(cinfo)) continue;
                JPEGDecoder.error();
            }
            cinfo.bytes_offset += num_bytes;
        }
    }

    static boolean skip_variable(jpeg_decompress_struct cinfo) {
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if ((length -= 2) > 0) {
            JPEGDecoder.skip_input_data(cinfo, length);
        }
        return true;
    }

    static boolean get_interesting_appn(jpeg_decompress_struct cinfo) {
        byte[] b = new byte[14];
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int length = (cinfo.buffer[cinfo.bytes_offset++] & 0xFF) << 8;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        length |= cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        int numtoread = (length -= 2) >= 14 ? 14 : (length > 0 ? length : 0);
        int i = 0;
        while (i < numtoread) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            b[i] = cinfo.buffer[cinfo.bytes_offset++];
            ++i;
        }
        length -= numtoread;
        switch (cinfo.unread_marker) {
            case 224: {
                JPEGDecoder.examine_app0(cinfo, b, numtoread, length);
                break;
            }
            case 238: {
                JPEGDecoder.examine_app14(cinfo, b, numtoread, length);
                break;
            }
            default: {
                JPEGDecoder.error();
            }
        }
        if (length > 0) {
            JPEGDecoder.skip_input_data(cinfo, length);
        }
        return true;
    }

    static void examine_app0(jpeg_decompress_struct cinfo, byte[] data, int datalen, int remaining) {
        int totallen = datalen + remaining;
        if (datalen >= 14 && (data[0] & 0xFF) == 74 && (data[1] & 0xFF) == 70 && (data[2] & 0xFF) == 73 && (data[3] & 0xFF) == 70 && (data[4] & 0xFF) == 0) {
            cinfo.saw_JFIF_marker = true;
            cinfo.JFIF_major_version = data[5];
            cinfo.JFIF_minor_version = (byte)(data[6] & 0xFF);
            cinfo.density_unit = (byte)(data[7] & 0xFF);
            cinfo.X_density = (short)(((data[8] & 0xFF) << 8) + (data[9] & 0xFF));
            cinfo.Y_density = (short)(((data[10] & 0xFF) << 8) + (data[11] & 0xFF));
            byte cfr_ignored_0 = cinfo.JFIF_major_version;
            byte cfr_ignored_1 = data[12];
            byte cfr_ignored_2 = data[13];
            totallen -= 14;
            byte cfr_ignored_3 = data[12];
            byte cfr_ignored_4 = data[13];
        } else if (datalen >= 6 && (data[0] & 0xFF) == 74 && (data[1] & 0xFF) == 70 && (data[2] & 0xFF) == 88 && (data[3] & 0xFF) == 88 && (data[4] & 0xFF) == 0) {
            switch (data[5] & 0xFF) {
                case 16: {
                    break;
                }
                case 17: {
                    break;
                }
                case 19: {
                    break;
                }
            }
        }
    }

    static void examine_app14(jpeg_decompress_struct cinfo, byte[] data, int datalen, int remaining) {
        if (datalen >= 12 && (data[0] & 0xFF) == 65 && (data[1] & 0xFF) == 100 && (data[2] & 0xFF) == 111 && (data[3] & 0xFF) == 98 && (data[4] & 0xFF) == 101) {
            int transform = data[11] & 0xFF;
            cinfo.saw_Adobe_marker = true;
            cinfo.Adobe_transform = (byte)transform;
        }
    }

    static boolean get_soi(jpeg_decompress_struct cinfo) {
        if (cinfo.marker.saw_SOI) {
            JPEGDecoder.error();
        }
        int i = 0;
        while (i < 16) {
            cinfo.arith_dc_L[i] = 0;
            cinfo.arith_dc_U[i] = 1;
            cinfo.arith_ac_K[i] = 5;
            ++i;
        }
        cinfo.restart_interval = 0;
        cinfo.jpeg_color_space = 0;
        cinfo.CCIR601_sampling = false;
        cinfo.saw_JFIF_marker = false;
        cinfo.JFIF_major_version = 1;
        cinfo.JFIF_minor_version = 1;
        cinfo.density_unit = 0;
        cinfo.X_density = 1;
        cinfo.Y_density = 1;
        cinfo.saw_Adobe_marker = false;
        cinfo.Adobe_transform = 0;
        cinfo.marker.saw_SOI = true;
        return true;
    }

    static void jinit_input_controller(jpeg_decompress_struct cinfo) {
        jpeg_input_controller inputctl = cinfo.inputctl = new jpeg_input_controller();
        inputctl.has_multiple_scans = false;
        inputctl.eoi_reached = false;
        inputctl.inheaders = true;
    }

    static void reset_marker_reader(jpeg_decompress_struct cinfo) {
        jpeg_marker_reader marker = cinfo.marker;
        cinfo.comp_info = null;
        cinfo.input_scan_number = 0;
        cinfo.unread_marker = 0;
        marker.saw_SOI = false;
        marker.saw_SOF = false;
        marker.discarded_bytes = 0;
    }

    static void reset_input_controller(jpeg_decompress_struct cinfo) {
        jpeg_input_controller inputctl = cinfo.inputctl;
        inputctl.has_multiple_scans = false;
        inputctl.eoi_reached = false;
        inputctl.inheaders = true;
        JPEGDecoder.reset_marker_reader(cinfo);
        cinfo.coef_bits = null;
    }

    static void finish_output_pass(jpeg_decompress_struct cinfo) {
        jpeg_decomp_master master = cinfo.master;
        if (cinfo.quantize_colors) {
            JPEGDecoder.error(20);
        }
        ++master.pass_number;
    }

    static void jpeg_destroy(jpeg_decompress_struct cinfo) {
        cinfo.global_state = 0;
    }

    static void jpeg_destroy_decompress(jpeg_decompress_struct cinfo) {
        JPEGDecoder.jpeg_destroy(cinfo);
    }

    static boolean jpeg_input_complete(jpeg_decompress_struct cinfo) {
        if (cinfo.global_state < 200 || cinfo.global_state > 210) {
            JPEGDecoder.error();
        }
        return cinfo.inputctl.eoi_reached;
    }

    static boolean jpeg_start_output(jpeg_decompress_struct cinfo, int scan_number) {
        if (cinfo.global_state != 207 && cinfo.global_state != 204) {
            JPEGDecoder.error();
        }
        if (scan_number <= 0) {
            scan_number = 1;
        }
        if (cinfo.inputctl.eoi_reached && scan_number > cinfo.input_scan_number) {
            scan_number = cinfo.input_scan_number;
        }
        cinfo.output_scan_number = scan_number;
        return JPEGDecoder.output_pass_setup(cinfo);
    }

    static boolean jpeg_finish_output(jpeg_decompress_struct cinfo) {
        if ((cinfo.global_state == 205 || cinfo.global_state == 206) && cinfo.buffered_image) {
            JPEGDecoder.finish_output_pass(cinfo);
            cinfo.global_state = 208;
        } else if (cinfo.global_state != 208) {
            JPEGDecoder.error();
        }
        while (cinfo.input_scan_number <= cinfo.output_scan_number && !cinfo.inputctl.eoi_reached) {
            if (JPEGDecoder.consume_input(cinfo) != 0) continue;
            return false;
        }
        cinfo.global_state = 207;
        return true;
    }

    static boolean jpeg_finish_decompress(jpeg_decompress_struct cinfo) {
        if (!(cinfo.global_state != 205 && cinfo.global_state != 206 || cinfo.buffered_image)) {
            if (cinfo.output_scanline < cinfo.output_height) {
                JPEGDecoder.error();
            }
            JPEGDecoder.finish_output_pass(cinfo);
            cinfo.global_state = 210;
        } else if (cinfo.global_state == 207) {
            cinfo.global_state = 210;
        } else if (cinfo.global_state != 210) {
            JPEGDecoder.error();
        }
        while (!cinfo.inputctl.eoi_reached) {
            if (JPEGDecoder.consume_input(cinfo) != 0) continue;
            return false;
        }
        JPEGDecoder.jpeg_abort(cinfo);
        return true;
    }

    static int jpeg_read_header(jpeg_decompress_struct cinfo, boolean require_image) {
        if (cinfo.global_state != 200 && cinfo.global_state != 201) {
            JPEGDecoder.error();
        }
        int retcode = JPEGDecoder.jpeg_consume_input(cinfo);
        switch (retcode) {
            case 1: {
                retcode = 1;
                break;
            }
            case 2: {
                if (require_image) {
                    JPEGDecoder.error();
                }
                JPEGDecoder.jpeg_abort(cinfo);
                retcode = 2;
                break;
            }
        }
        return retcode;
    }

    static int dummy_consume_data(jpeg_decompress_struct cinfo) {
        return 0;
    }

    static int consume_data(jpeg_decompress_struct cinfo) {
        jpeg_d_coef_controller coef = cinfo.coef;
        int yoffset = coef.MCU_vert_offset;
        while (yoffset < coef.MCU_rows_per_iMCU_row) {
            int MCU_col_num = coef.MCU_ctr;
            while (MCU_col_num < cinfo.MCUs_per_row) {
                int blkn = 0;
                int ci = 0;
                while (ci < cinfo.comps_in_scan) {
                    jpeg_component_info compptr = cinfo.cur_comp_info[ci];
                    int start_col = MCU_col_num * compptr.MCU_width;
                    int yindex = 0;
                    while (yindex < compptr.MCU_height) {
                        short[][] buffer_ptr = coef.whole_image[compptr.component_index][yindex + yoffset + cinfo.input_iMCU_row * compptr.v_samp_factor];
                        int buffer_ptr_offset = start_col;
                        int xindex = 0;
                        while (xindex < compptr.MCU_width) {
                            coef.MCU_buffer[blkn++] = buffer_ptr[buffer_ptr_offset++];
                            ++xindex;
                        }
                        ++yindex;
                    }
                    ++ci;
                }
                if (!cinfo.entropy.decode_mcu(cinfo, coef.MCU_buffer)) {
                    coef.MCU_vert_offset = yoffset;
                    coef.MCU_ctr = MCU_col_num;
                    return 0;
                }
                ++MCU_col_num;
            }
            coef.MCU_ctr = 0;
            ++yoffset;
        }
        if (++cinfo.input_iMCU_row < cinfo.total_iMCU_rows) {
            coef.start_iMCU_row(cinfo);
            return 3;
        }
        JPEGDecoder.finish_input_pass(cinfo);
        return 4;
    }

    static int consume_input(jpeg_decompress_struct cinfo) {
        switch (cinfo.inputctl.consume_input) {
            case 1: {
                switch (cinfo.coef.consume_data) {
                    case 0: {
                        return JPEGDecoder.consume_data(cinfo);
                    }
                    case 1: {
                        return JPEGDecoder.dummy_consume_data(cinfo);
                    }
                }
                JPEGDecoder.error();
                break;
            }
            case 0: {
                return JPEGDecoder.consume_markers(cinfo);
            }
            default: {
                JPEGDecoder.error();
            }
        }
        return 0;
    }

    static boolean fill_input_buffer(jpeg_decompress_struct cinfo) {
        try {
            InputStream inputStream = cinfo.inputStream;
            int nbytes = inputStream.read(cinfo.buffer);
            if (nbytes <= 0) {
                if (cinfo.start_of_file) {
                    JPEGDecoder.error();
                }
                cinfo.buffer[0] = -1;
                cinfo.buffer[1] = -39;
                nbytes = 2;
            }
            cinfo.bytes_in_buffer = nbytes;
            cinfo.bytes_offset = 0;
            cinfo.start_of_file = false;
        }
        catch (IOException iOException) {
            JPEGDecoder.error(39);
            return false;
        }
        return true;
    }

    static boolean first_marker(jpeg_decompress_struct cinfo) {
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
            JPEGDecoder.fill_input_buffer(cinfo);
        }
        int c2 = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
        if (c != 255 || c2 != 216) {
            JPEGDecoder.error();
        }
        cinfo.unread_marker = c2;
        return true;
    }

    static boolean next_marker(jpeg_decompress_struct cinfo) {
        int c;
        while (true) {
            if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                JPEGDecoder.fill_input_buffer(cinfo);
            }
            c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            while (c != 255) {
                ++cinfo.marker.discarded_bytes;
                if (cinfo.bytes_offset == cinfo.bytes_in_buffer) {
                    JPEGDecoder.fill_input_buffer(cinfo);
                }
                c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF;
            }
            do {
                if (cinfo.bytes_offset != cinfo.bytes_in_buffer) continue;
                JPEGDecoder.fill_input_buffer(cinfo);
            } while ((c = cinfo.buffer[cinfo.bytes_offset++] & 0xFF) == 255);
            if (c != 0) break;
            cinfo.marker.discarded_bytes += 2;
        }
        if (cinfo.marker.discarded_bytes != 0) {
            cinfo.marker.discarded_bytes = 0;
        }
        cinfo.unread_marker = c;
        return true;
    }

    static int read_markers(jpeg_decompress_struct cinfo) {
        while (cinfo.unread_marker != 0 || !(!cinfo.marker.saw_SOI ? !JPEGDecoder.first_marker(cinfo) : !JPEGDecoder.next_marker(cinfo))) {
            switch (cinfo.unread_marker) {
                case 216: {
                    if (JPEGDecoder.get_soi(cinfo)) break;
                    return 0;
                }
                case 192: 
                case 193: {
                    if (JPEGDecoder.get_sof(cinfo, false, false)) break;
                    return 0;
                }
                case 194: {
                    if (JPEGDecoder.get_sof(cinfo, true, false)) break;
                    return 0;
                }
                case 201: {
                    if (JPEGDecoder.get_sof(cinfo, false, true)) break;
                    return 0;
                }
                case 202: {
                    if (JPEGDecoder.get_sof(cinfo, true, true)) break;
                    return 0;
                }
                case 195: 
                case 197: 
                case 198: 
                case 199: 
                case 200: 
                case 203: 
                case 205: 
                case 206: 
                case 207: {
                    JPEGDecoder.error();
                    break;
                }
                case 218: {
                    if (!JPEGDecoder.get_sos(cinfo)) {
                        return 0;
                    }
                    cinfo.unread_marker = 0;
                    return 1;
                }
                case 217: {
                    cinfo.unread_marker = 0;
                    return 2;
                }
                case 204: {
                    if (JPEGDecoder.get_dac(cinfo)) break;
                    return 0;
                }
                case 196: {
                    if (JPEGDecoder.get_dht(cinfo)) break;
                    return 0;
                }
                case 219: {
                    if (JPEGDecoder.get_dqt(cinfo)) break;
                    return 0;
                }
                case 221: {
                    if (JPEGDecoder.get_dri(cinfo)) break;
                    return 0;
                }
                case 224: 
                case 225: 
                case 226: 
                case 227: 
                case 228: 
                case 229: 
                case 230: 
                case 231: 
                case 232: 
                case 233: 
                case 234: 
                case 235: 
                case 236: 
                case 237: 
                case 238: 
                case 239: {
                    if (JPEGDecoder.process_APPn(cinfo.unread_marker - 224, cinfo)) break;
                    return 0;
                }
                case 254: {
                    if (JPEGDecoder.process_COM(cinfo)) break;
                    return 0;
                }
                case 1: 
                case 208: 
                case 209: 
                case 210: 
                case 211: 
                case 212: 
                case 213: 
                case 214: 
                case 215: {
                    break;
                }
                case 220: {
                    if (JPEGDecoder.skip_variable(cinfo)) break;
                    return 0;
                }
                default: {
                    JPEGDecoder.error();
                }
            }
            cinfo.unread_marker = 0;
        }
        return 0;
    }

    static long jdiv_round_up(long a, long b) {
        return (a + b - 1L) / b;
    }

    static void initial_setup(jpeg_decompress_struct cinfo) {
        jpeg_component_info compptr;
        if (cinfo.image_height > 65500 || cinfo.image_width > 65500) {
            JPEGDecoder.error();
        }
        if (cinfo.data_precision != 8) {
            JPEGDecoder.error(" [data precision=" + cinfo.data_precision + "]");
        }
        if (cinfo.num_components > 10) {
            JPEGDecoder.error();
        }
        cinfo.max_h_samp_factor = 1;
        cinfo.max_v_samp_factor = 1;
        int ci = 0;
        while (ci < cinfo.num_components) {
            compptr = cinfo.comp_info[ci];
            if (compptr.h_samp_factor <= 0 || compptr.h_samp_factor > 4 || compptr.v_samp_factor <= 0 || compptr.v_samp_factor > 4) {
                JPEGDecoder.error();
            }
            cinfo.max_h_samp_factor = Math.max(cinfo.max_h_samp_factor, compptr.h_samp_factor);
            cinfo.max_v_samp_factor = Math.max(cinfo.max_v_samp_factor, compptr.v_samp_factor);
            ++ci;
        }
        cinfo.min_DCT_scaled_size = 8;
        ci = 0;
        while (ci < cinfo.num_components) {
            compptr = cinfo.comp_info[ci];
            compptr.DCT_scaled_size = 8;
            compptr.width_in_blocks = (int)JPEGDecoder.jdiv_round_up((long)cinfo.image_width * (long)compptr.h_samp_factor, cinfo.max_h_samp_factor * 8);
            compptr.height_in_blocks = (int)JPEGDecoder.jdiv_round_up((long)cinfo.image_height * (long)compptr.v_samp_factor, cinfo.max_v_samp_factor * 8);
            compptr.downsampled_width = (int)JPEGDecoder.jdiv_round_up((long)cinfo.image_width * (long)compptr.h_samp_factor, cinfo.max_h_samp_factor);
            compptr.downsampled_height = (int)JPEGDecoder.jdiv_round_up((long)cinfo.image_height * (long)compptr.v_samp_factor, cinfo.max_v_samp_factor);
            compptr.component_needed = true;
            compptr.quant_table = null;
            ++ci;
        }
        cinfo.total_iMCU_rows = (int)JPEGDecoder.jdiv_round_up(cinfo.image_height, cinfo.max_v_samp_factor * 8);
        cinfo.inputctl.has_multiple_scans = cinfo.comps_in_scan < cinfo.num_components || cinfo.progressive_mode;
    }

    static void per_scan_setup(jpeg_decompress_struct cinfo) {
        int tmp = 0;
        if (cinfo.comps_in_scan == 1) {
            jpeg_component_info compptr = cinfo.cur_comp_info[0];
            cinfo.MCUs_per_row = compptr.width_in_blocks;
            cinfo.MCU_rows_in_scan = compptr.height_in_blocks;
            compptr.MCU_width = 1;
            compptr.MCU_height = 1;
            compptr.MCU_blocks = 1;
            compptr.MCU_sample_width = compptr.DCT_scaled_size;
            compptr.last_col_width = 1;
            tmp = compptr.height_in_blocks % compptr.v_samp_factor;
            if (tmp == 0) {
                tmp = compptr.v_samp_factor;
            }
            compptr.last_row_height = tmp;
            cinfo.blocks_in_MCU = 1;
            cinfo.MCU_membership[0] = 0;
        } else {
            if (cinfo.comps_in_scan <= 0 || cinfo.comps_in_scan > 4) {
                JPEGDecoder.error();
            }
            cinfo.MCUs_per_row = (int)JPEGDecoder.jdiv_round_up(cinfo.image_width, cinfo.max_h_samp_factor * 8);
            cinfo.MCU_rows_in_scan = (int)JPEGDecoder.jdiv_round_up(cinfo.image_height, cinfo.max_v_samp_factor * 8);
            cinfo.blocks_in_MCU = 0;
            int ci = 0;
            while (ci < cinfo.comps_in_scan) {
                jpeg_component_info compptr = cinfo.cur_comp_info[ci];
                compptr.MCU_width = compptr.h_samp_factor;
                compptr.MCU_height = compptr.v_samp_factor;
                compptr.MCU_blocks = compptr.MCU_width * compptr.MCU_height;
                compptr.MCU_sample_width = compptr.MCU_width * compptr.DCT_scaled_size;
                tmp = compptr.width_in_blocks % compptr.MCU_width;
                if (tmp == 0) {
                    tmp = compptr.MCU_width;
                }
                compptr.last_col_width = tmp;
                tmp = compptr.height_in_blocks % compptr.MCU_height;
                if (tmp == 0) {
                    tmp = compptr.MCU_height;
                }
                compptr.last_row_height = tmp;
                int mcublks = compptr.MCU_blocks;
                if (cinfo.blocks_in_MCU + mcublks > 10) {
                    JPEGDecoder.error();
                }
                while (mcublks-- > 0) {
                    cinfo.MCU_membership[cinfo.blocks_in_MCU++] = ci;
                }
                ++ci;
            }
        }
    }

    static void latch_quant_tables(jpeg_decompress_struct cinfo) {
        int ci = 0;
        while (ci < cinfo.comps_in_scan) {
            jpeg_component_info compptr = cinfo.cur_comp_info[ci];
            if (compptr.quant_table == null) {
                int qtblno = compptr.quant_tbl_no;
                if (qtblno < 0 || qtblno >= 4 || cinfo.quant_tbl_ptrs[qtblno] == null) {
                    JPEGDecoder.error();
                }
                JQUANT_TBL qtbl = new JQUANT_TBL();
                System.arraycopy(cinfo.quant_tbl_ptrs[qtblno].quantval, 0, qtbl.quantval, 0, qtbl.quantval.length);
                qtbl.sent_table = cinfo.quant_tbl_ptrs[qtblno].sent_table;
                compptr.quant_table = qtbl;
            }
            ++ci;
        }
    }

    /*
     * Unable to fully structure code
     */
    static void jpeg_make_d_derived_tbl(jpeg_decompress_struct cinfo, boolean isDC, int tblno, d_derived_tbl dtbl) {
        i = 0;
        huffsize = new byte[257];
        huffcode = new int[257];
        if (tblno < 0 || tblno >= 4) {
            JPEGDecoder.error();
        }
        v0 = htbl = isDC != false ? cinfo.dc_huff_tbl_ptrs[tblno] : cinfo.ac_huff_tbl_ptrs[tblno];
        if (htbl == null) {
            JPEGDecoder.error();
        }
        dtbl.pub = htbl;
        p = 0;
        l = 1;
        while (l <= 16) {
            i = htbl.bits[l] & 255;
            if (i < 0 || p + i > 256) {
                JPEGDecoder.error();
            }
            while (i-- != 0) {
                huffsize[p++] = (byte)l;
            }
            ++l;
        }
        huffsize[p] = 0;
        numsymbols = p;
        code = 0;
        si = huffsize[0];
        p = 0;
        ** GOTO lbl34
        {
            huffcode[p++] = code++;
            do {
                if (huffsize[p] == si) continue block2;
                if (code >= 1 << si) {
                    JPEGDecoder.error();
                }
                code <<= 1;
                ++si;
lbl34:
                // 2 sources

            } while (huffsize[p] != 0);
        }
        p = 0;
        l = 1;
        while (l <= 16) {
            if ((htbl.bits[l] & 255) != 0) {
                dtbl.valoffset[l] = p - huffcode[p];
                dtbl.maxcode[l] = huffcode[(p += htbl.bits[l] & 255) - 1];
            } else {
                dtbl.maxcode[l] = -1;
            }
            ++l;
        }
        dtbl.maxcode[17] = 1048575;
        j = 0;
        while (j < dtbl.look_nbits.length) {
            dtbl.look_nbits[j] = 0;
            ++j;
        }
        p = 0;
        l = 1;
        while (l <= 8) {
            i = 1;
            while (i <= (htbl.bits[l] & 255)) {
                lookbits = huffcode[p] << 8 - l;
                ctr = 1 << 8 - l;
                while (ctr > 0) {
                    dtbl.look_nbits[lookbits] = l;
                    dtbl.look_sym[lookbits] = htbl.huffval[p];
                    ++lookbits;
                    --ctr;
                }
                ++i;
                ++p;
            }
            ++l;
        }
        if (isDC) {
            i = 0;
            while (i < numsymbols) {
                sym = htbl.huffval[i] & 255;
                if (sym < 0 || sym > 15) {
                    JPEGDecoder.error();
                }
                ++i;
            }
        }
    }

    static void start_input_pass(jpeg_decompress_struct cinfo) {
        JPEGDecoder.per_scan_setup(cinfo);
        JPEGDecoder.latch_quant_tables(cinfo);
        cinfo.entropy.start_pass(cinfo);
        cinfo.coef.start_input_pass(cinfo);
        cinfo.inputctl.consume_input = 1;
    }

    static void finish_input_pass(jpeg_decompress_struct cinfo) {
        cinfo.inputctl.consume_input = 0;
    }

    static int consume_markers(jpeg_decompress_struct cinfo) {
        jpeg_input_controller inputctl = cinfo.inputctl;
        if (inputctl.eoi_reached) {
            return 2;
        }
        int val = JPEGDecoder.read_markers(cinfo);
        switch (val) {
            case 1: {
                if (inputctl.inheaders) {
                    JPEGDecoder.initial_setup(cinfo);
                    inputctl.inheaders = false;
                    break;
                }
                if (!inputctl.has_multiple_scans) {
                    JPEGDecoder.error();
                }
                JPEGDecoder.start_input_pass(cinfo);
                break;
            }
            case 2: {
                inputctl.eoi_reached = true;
                if (inputctl.inheaders) {
                    if (!cinfo.marker.saw_SOF) break;
                    JPEGDecoder.error();
                    break;
                }
                if (cinfo.output_scan_number <= cinfo.input_scan_number) break;
                cinfo.output_scan_number = cinfo.input_scan_number;
                break;
            }
        }
        return val;
    }

    static void default_decompress_parms(jpeg_decompress_struct cinfo) {
        switch (cinfo.num_components) {
            case 1: {
                cinfo.jpeg_color_space = 1;
                cinfo.out_color_space = 1;
                break;
            }
            case 3: {
                if (cinfo.saw_JFIF_marker) {
                    cinfo.jpeg_color_space = 3;
                } else if (cinfo.saw_Adobe_marker) {
                    switch (cinfo.Adobe_transform) {
                        case 0: {
                            cinfo.jpeg_color_space = 2;
                            break;
                        }
                        case 1: {
                            cinfo.jpeg_color_space = 3;
                            break;
                        }
                        default: {
                            cinfo.jpeg_color_space = 3;
                            break;
                        }
                    }
                } else {
                    int cid0 = cinfo.comp_info[0].component_id;
                    int cid1 = cinfo.comp_info[1].component_id;
                    int cid2 = cinfo.comp_info[2].component_id;
                    cinfo.jpeg_color_space = cid0 == 1 && cid1 == 2 && cid2 == 3 ? 3 : (cid0 == 82 && cid1 == 71 && cid2 == 66 ? 2 : 3);
                }
                cinfo.out_color_space = 2;
                break;
            }
            case 4: {
                if (cinfo.saw_Adobe_marker) {
                    switch (cinfo.Adobe_transform) {
                        case 0: {
                            cinfo.jpeg_color_space = 4;
                            break;
                        }
                        case 2: {
                            cinfo.jpeg_color_space = 5;
                            break;
                        }
                        default: {
                            cinfo.jpeg_color_space = 5;
                            break;
                        }
                    }
                } else {
                    cinfo.jpeg_color_space = 4;
                }
                cinfo.out_color_space = 4;
                break;
            }
            default: {
                cinfo.jpeg_color_space = 0;
                cinfo.out_color_space = 0;
            }
        }
        cinfo.scale_num = 1;
        cinfo.scale_denom = 1;
        cinfo.output_gamma = 1.0;
        cinfo.buffered_image = false;
        cinfo.raw_data_out = false;
        cinfo.dct_method = 0;
        cinfo.do_fancy_upsampling = true;
        cinfo.do_block_smoothing = true;
        cinfo.quantize_colors = false;
        cinfo.dither_mode = 2;
        cinfo.two_pass_quantize = true;
        cinfo.desired_number_of_colors = 256;
        cinfo.colormap = null;
        cinfo.enable_1pass_quant = false;
        cinfo.enable_external_quant = false;
        cinfo.enable_2pass_quant = false;
    }

    static void init_source(jpeg_decompress_struct cinfo) {
        cinfo.buffer = new byte[4096];
        cinfo.bytes_in_buffer = 0;
        cinfo.bytes_offset = 0;
        cinfo.start_of_file = true;
    }

    static int jpeg_consume_input(jpeg_decompress_struct cinfo) {
        int retcode = 0;
        switch (cinfo.global_state) {
            case 200: {
                JPEGDecoder.reset_input_controller(cinfo);
                JPEGDecoder.init_source(cinfo);
                cinfo.global_state = 201;
            }
            case 201: {
                retcode = JPEGDecoder.consume_input(cinfo);
                if (retcode != 1) break;
                JPEGDecoder.default_decompress_parms(cinfo);
                cinfo.global_state = 202;
                break;
            }
            case 202: {
                retcode = 1;
                break;
            }
            case 203: 
            case 204: 
            case 205: 
            case 206: 
            case 207: 
            case 208: 
            case 210: {
                retcode = JPEGDecoder.consume_input(cinfo);
                break;
            }
            default: {
                JPEGDecoder.error();
            }
        }
        return retcode;
    }

    static void jpeg_abort(jpeg_decompress_struct cinfo) {
        cinfo.global_state = cinfo.is_decompressor ? 200 : 100;
    }

    static boolean isFileFormat(LEDataInputStream stream) {
        try {
            byte[] buffer = new byte[2];
            stream.read(buffer);
            stream.unread(buffer);
            return (buffer[0] & 0xFF) == 255 && (buffer[1] & 0xFF) == 216;
        }
        catch (Exception exception) {
            return false;
        }
    }

    /*
     * Unable to fully structure code
     */
    static ImageData[] loadFromByteStream(InputStream inputStream, ImageLoader loader) {
        block8: {
            cinfo = new jpeg_decompress_struct();
            cinfo.inputStream = inputStream;
            JPEGDecoder.jpeg_create_decompress(cinfo);
            JPEGDecoder.jpeg_read_header(cinfo, true);
            cinfo.buffered_image = cinfo.progressive_mode != false && loader.hasListeners() != false;
            JPEGDecoder.jpeg_start_decompress(cinfo);
            palette = null;
            switch (cinfo.out_color_space) {
                case 2: {
                    palette = new PaletteData(255, 65280, 0xFF0000);
                    break;
                }
                case 1: {
                    colors = new RGB[256];
                    i = 0;
                    while (i < colors.length) {
                        colors[i] = new RGB(i, i, i);
                        ++i;
                    }
                    palette = new PaletteData(colors);
                    break;
                }
                default: {
                    JPEGDecoder.error();
                }
            }
            scanlinePad = 4;
            row_stride = ((cinfo.output_width * cinfo.out_color_components * 8 + 7) / 8 + (scanlinePad - 1)) / scanlinePad * scanlinePad;
            buffer = new byte[1][row_stride];
            data = new byte[row_stride * cinfo.output_height];
            imageData = ImageData.internal_new(cinfo.output_width, cinfo.output_height, palette.isDirect != false ? 24 : 8, palette, scanlinePad, data, 0, null, null, -1, -1, 4, 0, 0, 0, 0);
            if (!cinfo.buffered_image) ** GOTO lbl51
            do {
                incrementCount = cinfo.input_scan_number - 1;
                JPEGDecoder.jpeg_start_output(cinfo, cinfo.input_scan_number);
                while (cinfo.output_scanline < cinfo.output_height) {
                    offset = row_stride * cinfo.output_scanline;
                    JPEGDecoder.jpeg_read_scanlines(cinfo, buffer, 1);
                    System.arraycopy(buffer[0], 0, data, offset, row_stride);
                }
                JPEGDecoder.jpeg_finish_output(cinfo);
                done = JPEGDecoder.jpeg_input_complete(cinfo);
                loader.notifyListeners(new ImageLoaderEvent(loader, (ImageData)imageData.clone(), incrementCount, done));
            } while (!done);
            break block8;
lbl-1000:
            // 1 sources

            {
                offset = row_stride * cinfo.output_scanline;
                JPEGDecoder.jpeg_read_scanlines(cinfo, buffer, 1);
                System.arraycopy(buffer[0], 0, data, offset, row_stride);
lbl51:
                // 2 sources

                ** while (cinfo.output_scanline < cinfo.output_height)
            }
        }
        JPEGDecoder.jpeg_finish_decompress(cinfo);
        JPEGDecoder.jpeg_destroy_decompress(cinfo);
        return new ImageData[]{imageData};
    }

    static final class JHUFF_TBL {
        byte[] bits = new byte[17];
        byte[] huffval = new byte[256];
        boolean sent_table;

        JHUFF_TBL() {
        }
    }

    static final class JQUANT_TBL {
        short[] quantval = new short[64];
        boolean sent_table;

        JQUANT_TBL() {
        }
    }

    static final class bitread_perm_state {
        int get_buffer;
        int bits_left;

        bitread_perm_state() {
        }
    }

    static final class bitread_working_state {
        byte[] buffer;
        int bytes_offset;
        int bytes_in_buffer;
        int get_buffer;
        int bits_left;
        jpeg_decompress_struct cinfo;

        bitread_working_state() {
        }
    }

    static final class d_derived_tbl {
        int[] maxcode = new int[18];
        int[] valoffset = new int[17];
        JHUFF_TBL pub;
        int[] look_nbits = new int[256];
        byte[] look_sym = new byte[256];

        d_derived_tbl() {
        }
    }

    static final class huff_entropy_decoder
    extends jpeg_entropy_decoder {
        bitread_perm_state bitstate = new bitread_perm_state();
        savable_state saved = new savable_state();
        int restarts_to_go;
        d_derived_tbl[] dc_derived_tbls = new d_derived_tbl[4];
        d_derived_tbl[] ac_derived_tbls = new d_derived_tbl[4];
        d_derived_tbl[] dc_cur_tbls = new d_derived_tbl[10];
        d_derived_tbl[] ac_cur_tbls = new d_derived_tbl[10];
        boolean[] dc_needed = new boolean[10];
        boolean[] ac_needed = new boolean[10];

        huff_entropy_decoder() {
        }

        void start_pass(jpeg_decompress_struct cinfo) {
            this.start_pass_huff_decoder(cinfo);
        }

        boolean decode_mcu(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            huff_entropy_decoder entropy = this;
            bitread_working_state br_state = this.br_state_local;
            savable_state state = this.state_local;
            if (cinfo.restart_interval != 0 && entropy.restarts_to_go == 0 && !this.process_restart(cinfo)) {
                return false;
            }
            if (!entropy.insufficient_data) {
                br_state.cinfo = cinfo;
                br_state.buffer = cinfo.buffer;
                br_state.bytes_in_buffer = cinfo.bytes_in_buffer;
                br_state.bytes_offset = cinfo.bytes_offset;
                int get_buffer = entropy.bitstate.get_buffer;
                int bits_left = entropy.bitstate.bits_left;
                state.last_dc_val[0] = entropy.saved.last_dc_val[0];
                state.last_dc_val[1] = entropy.saved.last_dc_val[1];
                state.last_dc_val[2] = entropy.saved.last_dc_val[2];
                state.last_dc_val[3] = entropy.saved.last_dc_val[3];
                int blkn = 0;
                while (blkn < cinfo.blocks_in_MCU) {
                    int k;
                    int r;
                    int look;
                    short[] block = MCU_data[blkn];
                    d_derived_tbl dctbl = entropy.dc_cur_tbls[blkn];
                    d_derived_tbl actbl = entropy.ac_cur_tbls[blkn];
                    int s = 0;
                    int nb = 0;
                    if (bits_left < 8) {
                        if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                            return false;
                        }
                        get_buffer = br_state.get_buffer;
                        bits_left = br_state.bits_left;
                        if (bits_left < 8) {
                            nb = 1;
                            s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, dctbl, nb);
                            if (s < 0) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                    }
                    if (nb != 1) {
                        look = get_buffer >> bits_left - 8 & 0xFF;
                        nb = dctbl.look_nbits[look];
                        if (nb != 0) {
                            bits_left -= nb;
                            s = dctbl.look_sym[look] & 0xFF;
                        } else {
                            nb = 9;
                            s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, dctbl, nb);
                            if (s < 0) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                    }
                    if (s != 0) {
                        if (bits_left < s) {
                            if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s)) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                        int n = s = (r = get_buffer >> (bits_left -= s) & (1 << s) - 1) < extend_test[s] ? r + extend_offset[s] : r;
                    }
                    if (entropy.dc_needed[blkn]) {
                        int ci = cinfo.MCU_membership[blkn];
                        state.last_dc_val[ci] = s += state.last_dc_val[ci];
                        block[0] = (short)s;
                    }
                    if (entropy.ac_needed[blkn]) {
                        k = 1;
                        while (k < 64) {
                            nb = 0;
                            if (bits_left < 8) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                                if (bits_left < 8) {
                                    nb = 1;
                                    s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb);
                                    if (s < 0) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                            }
                            if (nb != 1) {
                                look = get_buffer >> bits_left - 8 & 0xFF;
                                nb = actbl.look_nbits[look];
                                if (nb != 0) {
                                    bits_left -= nb;
                                    s = actbl.look_sym[look] & 0xFF;
                                } else {
                                    nb = 9;
                                    s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb);
                                    if (s < 0) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                            }
                            r = s >> 4;
                            if ((s &= 0xF) != 0) {
                                k += r;
                                if (bits_left < s) {
                                    if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s)) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                                s = (r = get_buffer >> (bits_left -= s) & (1 << s) - 1) < extend_test[s] ? r + extend_offset[s] : r;
                                block[JPEGDecoder.jpeg_natural_order[k]] = (short)s;
                            } else {
                                if (r != 15) break;
                                k += 15;
                            }
                            ++k;
                        }
                    } else {
                        k = 1;
                        while (k < 64) {
                            nb = 0;
                            if (bits_left < 8) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                                if (bits_left < 8) {
                                    nb = 1;
                                    s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb);
                                    if (s < 0) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                            }
                            if (nb != 1) {
                                look = get_buffer >> bits_left - 8 & 0xFF;
                                nb = actbl.look_nbits[look];
                                if (nb != 0) {
                                    bits_left -= nb;
                                    s = actbl.look_sym[look] & 0xFF;
                                } else {
                                    nb = 9;
                                    s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb);
                                    if (s < 0) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                            }
                            r = s >> 4;
                            if ((s &= 0xF) != 0) {
                                k += r;
                                if (bits_left < s) {
                                    if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s)) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                                bits_left -= s;
                            } else {
                                if (r != 15) break;
                                k += 15;
                            }
                            ++k;
                        }
                    }
                    ++blkn;
                }
                cinfo.buffer = br_state.buffer;
                cinfo.bytes_in_buffer = br_state.bytes_in_buffer;
                cinfo.bytes_offset = br_state.bytes_offset;
                entropy.bitstate.get_buffer = get_buffer;
                entropy.bitstate.bits_left = bits_left;
                entropy.saved.last_dc_val[0] = state.last_dc_val[0];
                entropy.saved.last_dc_val[1] = state.last_dc_val[1];
                entropy.saved.last_dc_val[2] = state.last_dc_val[2];
                entropy.saved.last_dc_val[3] = state.last_dc_val[3];
            }
            --entropy.restarts_to_go;
            return true;
        }

        void start_pass_huff_decoder(jpeg_decompress_struct cinfo) {
            jpeg_component_info compptr;
            huff_entropy_decoder entropy = this;
            if (cinfo.Ss == 0 && cinfo.Se == 63 && cinfo.Ah == 0) {
                int cfr_ignored_0 = cinfo.Al;
            }
            int ci = 0;
            while (ci < cinfo.comps_in_scan) {
                compptr = cinfo.cur_comp_info[ci];
                int dctbl = compptr.dc_tbl_no;
                int actbl = compptr.ac_tbl_no;
                entropy.dc_derived_tbls[dctbl] = new d_derived_tbl();
                JPEGDecoder.jpeg_make_d_derived_tbl(cinfo, true, dctbl, entropy.dc_derived_tbls[dctbl]);
                entropy.ac_derived_tbls[actbl] = new d_derived_tbl();
                JPEGDecoder.jpeg_make_d_derived_tbl(cinfo, false, actbl, entropy.ac_derived_tbls[actbl]);
                entropy.saved.last_dc_val[ci] = 0;
                ++ci;
            }
            int blkn = 0;
            while (blkn < cinfo.blocks_in_MCU) {
                ci = cinfo.MCU_membership[blkn];
                compptr = cinfo.cur_comp_info[ci];
                entropy.dc_cur_tbls[blkn] = entropy.dc_derived_tbls[compptr.dc_tbl_no];
                entropy.ac_cur_tbls[blkn] = entropy.ac_derived_tbls[compptr.ac_tbl_no];
                if (compptr.component_needed) {
                    entropy.dc_needed[blkn] = true;
                    entropy.ac_needed[blkn] = compptr.DCT_scaled_size > 1;
                } else {
                    entropy.ac_needed[blkn] = false;
                    entropy.dc_needed[blkn] = false;
                }
                ++blkn;
            }
            entropy.bitstate.bits_left = 0;
            entropy.bitstate.get_buffer = 0;
            entropy.insufficient_data = false;
            entropy.restarts_to_go = cinfo.restart_interval;
        }

        boolean process_restart(jpeg_decompress_struct cinfo) {
            huff_entropy_decoder entropy = this;
            cinfo.marker.discarded_bytes += entropy.bitstate.bits_left / 8;
            entropy.bitstate.bits_left = 0;
            if (!JPEGDecoder.read_restart_marker(cinfo)) {
                return false;
            }
            int ci = 0;
            while (ci < cinfo.comps_in_scan) {
                entropy.saved.last_dc_val[ci] = 0;
                ++ci;
            }
            entropy.restarts_to_go = cinfo.restart_interval;
            if (cinfo.unread_marker == 0) {
                entropy.insufficient_data = false;
            }
            return true;
        }
    }

    static final class jpeg_color_deconverter {
        int color_convert;
        int[] Cr_r_tab;
        int[] Cb_b_tab;
        int[] Cr_g_tab;
        int[] Cb_g_tab;

        jpeg_color_deconverter() {
        }

        void start_pass(jpeg_decompress_struct cinfo) {
        }
    }

    static final class jpeg_color_quantizer {
        int[][] sv_colormap;
        int sv_actual;
        int[][] colorindex;
        boolean is_padded;
        int[] Ncolors = new int[4];
        int row_index;
        boolean on_odd_row;

        jpeg_color_quantizer() {
        }

        void start_pass(jpeg_decompress_struct cinfo, boolean is_pre_scan) {
            JPEGDecoder.error();
        }
    }

    static final class jpeg_component_info {
        int component_id;
        int component_index;
        int h_samp_factor;
        int v_samp_factor;
        int quant_tbl_no;
        int dc_tbl_no;
        int ac_tbl_no;
        int width_in_blocks;
        int height_in_blocks;
        int DCT_scaled_size;
        int downsampled_width;
        int downsampled_height;
        boolean component_needed;
        int MCU_width;
        int MCU_height;
        int MCU_blocks;
        int MCU_sample_width;
        int last_col_width;
        int last_row_height;
        JQUANT_TBL quant_table;
        int[] dct_table;

        jpeg_component_info() {
        }
    }

    static final class jpeg_d_coef_controller {
        int consume_data;
        int decompress_data;
        short[][][] coef_arrays;
        int MCU_ctr;
        int MCU_vert_offset;
        int MCU_rows_per_iMCU_row;
        short[][] MCU_buffer = new short[10][];
        short[][][][] whole_image = new short[10][][][];
        int[] coef_bits_latch;
        short[] workspace;

        jpeg_d_coef_controller() {
        }

        void start_input_pass(jpeg_decompress_struct cinfo) {
            cinfo.input_iMCU_row = 0;
            this.start_iMCU_row(cinfo);
        }

        void start_iMCU_row(jpeg_decompress_struct cinfo) {
            jpeg_d_coef_controller coef = cinfo.coef;
            coef.MCU_rows_per_iMCU_row = cinfo.comps_in_scan > 1 ? 1 : (cinfo.input_iMCU_row < cinfo.total_iMCU_rows - 1 ? cinfo.cur_comp_info[0].v_samp_factor : cinfo.cur_comp_info[0].last_row_height);
            coef.MCU_ctr = 0;
            coef.MCU_vert_offset = 0;
        }
    }

    static final class jpeg_d_main_controller {
        int process_data;
        byte[][][] buffer = new byte[10][][];
        int[] buffer_offset = new int[10];
        boolean buffer_full;
        int[] rowgroup_ctr = new int[1];
        byte[][][][] xbuffer = new byte[2][][][];
        int[][] xbuffer_offset = new int[2][];
        int whichptr;
        int context_state;
        int rowgroups_avail;
        int iMCU_row_ctr;

        jpeg_d_main_controller() {
        }

        void start_pass(jpeg_decompress_struct cinfo, int pass_mode) {
            jpeg_d_main_controller main = cinfo.main;
            switch (pass_mode) {
                case 0: {
                    if (cinfo.upsample.need_context_rows) {
                        main.process_data = 1;
                        JPEGDecoder.make_funny_pointers(cinfo);
                        main.whichptr = 0;
                        main.context_state = 0;
                        main.iMCU_row_ctr = 0;
                    } else {
                        main.process_data = 0;
                    }
                    main.buffer_full = false;
                    main.rowgroup_ctr[0] = 0;
                    break;
                }
                default: {
                    JPEGDecoder.error();
                }
            }
        }
    }

    static final class jpeg_d_post_controller {
        int post_process_data;
        int[] whole_image;
        int[][] buffer;
        int strip_height;
        int starting_row;
        int next_row;

        jpeg_d_post_controller() {
        }

        void start_pass(jpeg_decompress_struct cinfo, int pass_mode) {
            jpeg_d_post_controller post = cinfo.post;
            switch (pass_mode) {
                case 0: {
                    if (cinfo.quantize_colors) {
                        JPEGDecoder.error(20);
                        break;
                    }
                    post.post_process_data = 1;
                    break;
                }
                default: {
                    JPEGDecoder.error();
                }
            }
            post.next_row = 0;
            post.starting_row = 0;
        }
    }

    static final class jpeg_decomp_master {
        boolean is_dummy_pass;
        int pass_number;
        boolean using_merged_upsample;
        jpeg_color_quantizer quantizer_1pass;
        jpeg_color_quantizer quantizer_2pass;

        jpeg_decomp_master() {
        }
    }

    static final class jpeg_decompress_struct {
        boolean is_decompressor;
        int global_state;
        InputStream inputStream;
        byte[] buffer;
        int bytes_in_buffer;
        int bytes_offset;
        boolean start_of_file;
        int image_width;
        int image_height;
        int num_components;
        int jpeg_color_space;
        int out_color_space;
        int scale_num;
        int scale_denom;
        double output_gamma;
        boolean buffered_image;
        boolean raw_data_out;
        int dct_method;
        boolean do_fancy_upsampling;
        boolean do_block_smoothing;
        boolean quantize_colors;
        int dither_mode;
        boolean two_pass_quantize;
        int desired_number_of_colors;
        boolean enable_1pass_quant;
        boolean enable_external_quant;
        boolean enable_2pass_quant;
        int output_width;
        int output_height;
        int out_color_components;
        int output_components;
        int rec_outbuf_height;
        int actual_number_of_colors;
        int[] colormap;
        int output_scanline;
        int input_scan_number;
        int input_iMCU_row;
        int output_scan_number;
        int output_iMCU_row;
        int[][] coef_bits;
        JQUANT_TBL[] quant_tbl_ptrs = new JQUANT_TBL[4];
        JHUFF_TBL[] dc_huff_tbl_ptrs = new JHUFF_TBL[4];
        JHUFF_TBL[] ac_huff_tbl_ptrs = new JHUFF_TBL[4];
        int data_precision;
        jpeg_component_info[] comp_info;
        boolean progressive_mode;
        boolean arith_code;
        byte[] arith_dc_L = new byte[16];
        byte[] arith_dc_U = new byte[16];
        byte[] arith_ac_K = new byte[16];
        int restart_interval;
        boolean saw_JFIF_marker;
        byte JFIF_major_version;
        byte JFIF_minor_version;
        byte density_unit;
        short X_density;
        short Y_density;
        boolean saw_Adobe_marker;
        byte Adobe_transform;
        boolean CCIR601_sampling;
        jpeg_marker_reader marker_list;
        int max_h_samp_factor;
        int max_v_samp_factor;
        int min_DCT_scaled_size;
        int total_iMCU_rows;
        byte[] sample_range_limit;
        int sample_range_limit_offset;
        int comps_in_scan;
        jpeg_component_info[] cur_comp_info = new jpeg_component_info[4];
        int MCUs_per_row;
        int MCU_rows_in_scan;
        int blocks_in_MCU;
        int[] MCU_membership = new int[10];
        int Ss;
        int Se;
        int Ah;
        int Al;
        int unread_marker;
        int[] workspace = new int[64];
        int[] row_ctr = new int[1];
        jpeg_decomp_master master;
        jpeg_d_main_controller main;
        jpeg_d_coef_controller coef;
        jpeg_d_post_controller post;
        jpeg_input_controller inputctl;
        jpeg_marker_reader marker;
        jpeg_entropy_decoder entropy;
        jpeg_inverse_dct idct;
        jpeg_upsampler upsample;
        jpeg_color_deconverter cconvert;
        jpeg_color_quantizer cquantize;

        jpeg_decompress_struct() {
        }
    }

    static abstract class jpeg_entropy_decoder {
        boolean insufficient_data;
        bitread_working_state br_state_local = new bitread_working_state();
        savable_state state_local = new savable_state();

        jpeg_entropy_decoder() {
        }

        abstract void start_pass(jpeg_decompress_struct var1);

        abstract boolean decode_mcu(jpeg_decompress_struct var1, short[][] var2);
    }

    static final class jpeg_input_controller {
        int consume_input;
        boolean has_multiple_scans;
        boolean eoi_reached;
        boolean inheaders;

        jpeg_input_controller() {
        }
    }

    static final class jpeg_inverse_dct {
        int[] cur_method = new int[10];

        jpeg_inverse_dct() {
        }

        void start_pass(jpeg_decompress_struct cinfo) {
            jpeg_inverse_dct idct = cinfo.idct;
            int method = 0;
            int ci = 0;
            while (ci < cinfo.num_components) {
                JQUANT_TBL qtbl;
                jpeg_component_info compptr = cinfo.comp_info[ci];
                block0 : switch (compptr.DCT_scaled_size) {
                    case 8: {
                        switch (cinfo.dct_method) {
                            case 0: {
                                method = 0;
                                break block0;
                            }
                        }
                        JPEGDecoder.error();
                        break;
                    }
                    default: {
                        JPEGDecoder.error();
                    }
                }
                if (compptr.component_needed && idct.cur_method[ci] != method && (qtbl = compptr.quant_table) != null) {
                    idct.cur_method[ci] = method;
                    switch (method) {
                        case 0: {
                            int[] ismtbl = compptr.dct_table;
                            int i = 0;
                            while (i < 64) {
                                ismtbl[i] = qtbl.quantval[i];
                                ++i;
                            }
                            break;
                        }
                        default: {
                            JPEGDecoder.error();
                        }
                    }
                }
                ++ci;
            }
        }
    }

    static final class jpeg_marker_reader {
        boolean saw_SOI;
        boolean saw_SOF;
        int next_restart_num;
        int discarded_bytes;
        int length_limit_COM;
        int[] length_limit_APPn = new int[16];

        jpeg_marker_reader() {
        }
    }

    static final class jpeg_upsampler {
        boolean need_context_rows;
        byte[][][] color_buf = new byte[10][][];
        int[] color_buf_offset = new int[10];
        int[] methods = new int[10];
        int next_row_out;
        int rows_to_go;
        int[] rowgroup_height = new int[10];
        byte[] h_expand = new byte[10];
        byte[] v_expand = new byte[10];

        jpeg_upsampler() {
        }

        void start_pass(jpeg_decompress_struct cinfo) {
            jpeg_upsampler upsample = cinfo.upsample;
            upsample.next_row_out = cinfo.max_v_samp_factor;
            upsample.rows_to_go = cinfo.output_height;
        }
    }

    static final class phuff_entropy_decoder
    extends jpeg_entropy_decoder {
        bitread_perm_state bitstate = new bitread_perm_state();
        savable_state saved = new savable_state();
        int restarts_to_go;
        d_derived_tbl[] derived_tbls = new d_derived_tbl[4];
        d_derived_tbl ac_derived_tbl;
        int[] newnz_pos = new int[64];

        phuff_entropy_decoder() {
        }

        void start_pass(jpeg_decompress_struct cinfo) {
            this.start_pass_phuff_decoder(cinfo);
        }

        boolean decode_mcu(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            boolean is_DC_band;
            boolean bl = is_DC_band = cinfo.Ss == 0;
            if (cinfo.Ah == 0) {
                if (is_DC_band) {
                    return this.decode_mcu_DC_first(cinfo, MCU_data);
                }
                return this.decode_mcu_AC_first(cinfo, MCU_data);
            }
            if (is_DC_band) {
                return this.decode_mcu_DC_refine(cinfo, MCU_data);
            }
            return this.decode_mcu_AC_refine(cinfo, MCU_data);
        }

        boolean decode_mcu_DC_refine(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            phuff_entropy_decoder entropy = this;
            int p1 = 1 << cinfo.Al;
            bitread_working_state br_state = this.br_state_local;
            if (cinfo.restart_interval != 0 && entropy.restarts_to_go == 0 && !this.process_restart(cinfo)) {
                return false;
            }
            br_state.cinfo = cinfo;
            br_state.buffer = cinfo.buffer;
            br_state.bytes_in_buffer = cinfo.bytes_in_buffer;
            br_state.bytes_offset = cinfo.bytes_offset;
            int get_buffer = entropy.bitstate.get_buffer;
            int bits_left = entropy.bitstate.bits_left;
            int blkn = 0;
            while (blkn < cinfo.blocks_in_MCU) {
                short[] block = MCU_data[blkn];
                if (bits_left < 1) {
                    if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1)) {
                        return false;
                    }
                    get_buffer = br_state.get_buffer;
                    bits_left = br_state.bits_left;
                }
                if ((get_buffer >> --bits_left & 1) != 0) {
                    block[0] = (short)(block[0] | p1);
                }
                ++blkn;
            }
            cinfo.buffer = br_state.buffer;
            cinfo.bytes_in_buffer = br_state.bytes_in_buffer;
            cinfo.bytes_offset = br_state.bytes_offset;
            entropy.bitstate.get_buffer = get_buffer;
            entropy.bitstate.bits_left = bits_left;
            --entropy.restarts_to_go;
            return true;
        }

        boolean decode_mcu_AC_refine(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            phuff_entropy_decoder entropy = this;
            int Se = cinfo.Se;
            int p1 = 1 << cinfo.Al;
            int m1 = -1 << cinfo.Al;
            int s = 0;
            bitread_working_state br_state = this.br_state_local;
            int[] newnz_pos = entropy.newnz_pos;
            if (cinfo.restart_interval != 0 && entropy.restarts_to_go == 0 && !this.process_restart(cinfo)) {
                return false;
            }
            if (!entropy.insufficient_data) {
                int thiscoef_offset;
                short[] thiscoef;
                br_state.cinfo = cinfo;
                br_state.buffer = cinfo.buffer;
                br_state.bytes_in_buffer = cinfo.bytes_in_buffer;
                br_state.bytes_offset = cinfo.bytes_offset;
                int get_buffer = entropy.bitstate.get_buffer;
                int bits_left = entropy.bitstate.bits_left;
                int EOBRUN = entropy.saved.EOBRUN;
                short[] block = MCU_data[0];
                d_derived_tbl tbl = entropy.ac_derived_tbl;
                int num_newnz = 0;
                int k = cinfo.Ss;
                if (EOBRUN == 0) {
                    while (k <= Se) {
                        int nb = 0;
                        if (bits_left < 8) {
                            if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                                while (num_newnz > 0) {
                                    block[newnz_pos[--num_newnz]] = 0;
                                }
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                            if (bits_left < 8) {
                                nb = 1;
                                s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                                if (s < 0) {
                                    while (num_newnz > 0) {
                                        block[newnz_pos[--num_newnz]] = 0;
                                    }
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                        }
                        if (nb != 1) {
                            int look = get_buffer >> bits_left - 8 & 0xFF;
                            nb = tbl.look_nbits[look];
                            if (nb != 0) {
                                bits_left -= nb;
                                s = tbl.look_sym[look] & 0xFF;
                            } else {
                                nb = 9;
                                s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                                if (s < 0) {
                                    while (num_newnz > 0) {
                                        block[newnz_pos[--num_newnz]] = 0;
                                    }
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                        }
                        int r = s >> 4;
                        if ((s &= 0xF) != 0) {
                            if (bits_left < 1) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1)) {
                                    while (num_newnz > 0) {
                                        block[newnz_pos[--num_newnz]] = 0;
                                    }
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                            s = (get_buffer >> --bits_left & 1) != 0 ? p1 : m1;
                        } else if (r != 15) {
                            EOBRUN = 1 << r;
                            if (r == 0) break;
                            if (bits_left < r) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, r)) {
                                    while (num_newnz > 0) {
                                        block[newnz_pos[--num_newnz]] = 0;
                                    }
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                            bits_left -= r;
                            r = get_buffer >> bits_left & (1 << r) - 1;
                            EOBRUN += r;
                            break;
                        }
                        do {
                            if ((thiscoef = block)[thiscoef_offset = jpeg_natural_order[k]] != 0) {
                                if (bits_left < 1) {
                                    if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1)) {
                                        while (num_newnz > 0) {
                                            block[newnz_pos[--num_newnz]] = 0;
                                        }
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                                if ((get_buffer >> --bits_left & 1) == 0 || (thiscoef[thiscoef_offset] & p1) != 0) continue;
                                if (thiscoef[thiscoef_offset] >= 0) {
                                    int n = thiscoef_offset;
                                    thiscoef[n] = (short)(thiscoef[n] + p1);
                                    continue;
                                }
                                int n = thiscoef_offset;
                                thiscoef[n] = (short)(thiscoef[n] + m1);
                                continue;
                            }
                            if (--r < 0) break;
                        } while (++k <= Se);
                        if (s != 0) {
                            int pos = jpeg_natural_order[k];
                            block[pos] = (short)s;
                            newnz_pos[num_newnz++] = pos;
                        }
                        ++k;
                    }
                }
                if (EOBRUN > 0) {
                    while (k <= Se) {
                        thiscoef = block;
                        thiscoef_offset = jpeg_natural_order[k];
                        if (thiscoef[thiscoef_offset] != 0) {
                            if (bits_left < 1) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1)) {
                                    while (num_newnz > 0) {
                                        block[newnz_pos[--num_newnz]] = 0;
                                    }
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                            if ((get_buffer >> --bits_left & 1) != 0 && (thiscoef[thiscoef_offset] & p1) == 0) {
                                if (thiscoef[thiscoef_offset] >= 0) {
                                    int n = thiscoef_offset;
                                    thiscoef[n] = (short)(thiscoef[n] + p1);
                                } else {
                                    int n = thiscoef_offset;
                                    thiscoef[n] = (short)(thiscoef[n] + m1);
                                }
                            }
                        }
                        ++k;
                    }
                    --EOBRUN;
                }
                cinfo.buffer = br_state.buffer;
                cinfo.bytes_in_buffer = br_state.bytes_in_buffer;
                cinfo.bytes_offset = br_state.bytes_offset;
                entropy.bitstate.get_buffer = get_buffer;
                entropy.bitstate.bits_left = bits_left;
                entropy.saved.EOBRUN = EOBRUN;
            }
            --entropy.restarts_to_go;
            return true;
        }

        boolean decode_mcu_AC_first(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            phuff_entropy_decoder entropy = this;
            int Se = cinfo.Se;
            int Al = cinfo.Al;
            int s = 0;
            bitread_working_state br_state = this.br_state_local;
            if (cinfo.restart_interval != 0 && entropy.restarts_to_go == 0 && !this.process_restart(cinfo)) {
                return false;
            }
            if (!entropy.insufficient_data) {
                int EOBRUN = entropy.saved.EOBRUN;
                if (EOBRUN > 0) {
                    --EOBRUN;
                } else {
                    br_state.cinfo = cinfo;
                    br_state.buffer = cinfo.buffer;
                    br_state.bytes_in_buffer = cinfo.bytes_in_buffer;
                    br_state.bytes_offset = cinfo.bytes_offset;
                    int get_buffer = entropy.bitstate.get_buffer;
                    int bits_left = entropy.bitstate.bits_left;
                    short[] block = MCU_data[0];
                    d_derived_tbl tbl = entropy.ac_derived_tbl;
                    int k = cinfo.Ss;
                    while (k <= Se) {
                        int nb = 0;
                        if (bits_left < 8) {
                            if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                            if (bits_left < 8) {
                                nb = 1;
                                s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                                if (s < 0) {
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                        }
                        if (nb != 1) {
                            int look = get_buffer >> bits_left - 8 & 0xFF;
                            nb = tbl.look_nbits[look];
                            if (nb != 0) {
                                bits_left -= nb;
                                s = tbl.look_sym[look] & 0xFF;
                            } else {
                                nb = 9;
                                s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                                if (s < 0) {
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                        }
                        int r = s >> 4;
                        if ((s &= 0xF) != 0) {
                            k += r;
                            if (bits_left < s) {
                                if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s)) {
                                    return false;
                                }
                                get_buffer = br_state.get_buffer;
                                bits_left = br_state.bits_left;
                            }
                            s = (r = get_buffer >> (bits_left -= s) & (1 << s) - 1) < extend_test[s] ? r + extend_offset[s] : r;
                            block[JPEGDecoder.jpeg_natural_order[k]] = (short)(s << Al);
                        } else if (r == 15) {
                            k += 15;
                        } else {
                            EOBRUN = 1 << r;
                            if (r != 0) {
                                if (bits_left < r) {
                                    if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, r)) {
                                        return false;
                                    }
                                    get_buffer = br_state.get_buffer;
                                    bits_left = br_state.bits_left;
                                }
                                bits_left -= r;
                                r = get_buffer >> bits_left & (1 << r) - 1;
                                EOBRUN += r;
                            }
                            --EOBRUN;
                            break;
                        }
                        ++k;
                    }
                    cinfo.buffer = br_state.buffer;
                    cinfo.bytes_in_buffer = br_state.bytes_in_buffer;
                    cinfo.bytes_offset = br_state.bytes_offset;
                    entropy.bitstate.get_buffer = get_buffer;
                    entropy.bitstate.bits_left = bits_left;
                }
                entropy.saved.EOBRUN = EOBRUN;
            }
            --entropy.restarts_to_go;
            return true;
        }

        boolean decode_mcu_DC_first(jpeg_decompress_struct cinfo, short[][] MCU_data) {
            phuff_entropy_decoder entropy = this;
            int Al = cinfo.Al;
            int s = 0;
            bitread_working_state br_state = this.br_state_local;
            savable_state state = this.state_local;
            if (cinfo.restart_interval != 0 && entropy.restarts_to_go == 0 && !this.process_restart(cinfo)) {
                return false;
            }
            if (!entropy.insufficient_data) {
                br_state.cinfo = cinfo;
                br_state.buffer = cinfo.buffer;
                br_state.bytes_in_buffer = cinfo.bytes_in_buffer;
                br_state.bytes_offset = cinfo.bytes_offset;
                int get_buffer = entropy.bitstate.get_buffer;
                int bits_left = entropy.bitstate.bits_left;
                state.EOBRUN = entropy.saved.EOBRUN;
                state.last_dc_val[0] = entropy.saved.last_dc_val[0];
                state.last_dc_val[1] = entropy.saved.last_dc_val[1];
                state.last_dc_val[2] = entropy.saved.last_dc_val[2];
                state.last_dc_val[3] = entropy.saved.last_dc_val[3];
                int blkn = 0;
                while (blkn < cinfo.blocks_in_MCU) {
                    short[] block = MCU_data[blkn];
                    int ci = cinfo.MCU_membership[blkn];
                    jpeg_component_info compptr = cinfo.cur_comp_info[ci];
                    d_derived_tbl tbl = entropy.derived_tbls[compptr.dc_tbl_no];
                    int nb = 0;
                    if (bits_left < 8) {
                        if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0)) {
                            return false;
                        }
                        get_buffer = br_state.get_buffer;
                        bits_left = br_state.bits_left;
                        if (bits_left < 8) {
                            nb = 1;
                            s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                            if (s < 0) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                    }
                    if (nb != 1) {
                        int look = get_buffer >> bits_left - 8 & 0xFF;
                        nb = tbl.look_nbits[look];
                        if (nb != 0) {
                            bits_left -= nb;
                            s = tbl.look_sym[look] & 0xFF;
                        } else {
                            nb = 9;
                            s = JPEGDecoder.jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb);
                            if (s < 0) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                    }
                    if (s != 0) {
                        int r;
                        if (bits_left < s) {
                            if (!JPEGDecoder.jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s)) {
                                return false;
                            }
                            get_buffer = br_state.get_buffer;
                            bits_left = br_state.bits_left;
                        }
                        s = (r = get_buffer >> (bits_left -= s) & (1 << s) - 1) < extend_test[s] ? r + extend_offset[s] : r;
                    }
                    state.last_dc_val[ci] = s += state.last_dc_val[ci];
                    block[0] = (short)(s << Al);
                    ++blkn;
                }
                cinfo.buffer = br_state.buffer;
                cinfo.bytes_in_buffer = br_state.bytes_in_buffer;
                cinfo.bytes_offset = br_state.bytes_offset;
                entropy.bitstate.get_buffer = get_buffer;
                entropy.bitstate.bits_left = bits_left;
                entropy.saved.EOBRUN = state.EOBRUN;
                entropy.saved.last_dc_val[0] = state.last_dc_val[0];
                entropy.saved.last_dc_val[1] = state.last_dc_val[1];
                entropy.saved.last_dc_val[2] = state.last_dc_val[2];
                entropy.saved.last_dc_val[3] = state.last_dc_val[3];
            }
            --entropy.restarts_to_go;
            return true;
        }

        boolean process_restart(jpeg_decompress_struct cinfo) {
            phuff_entropy_decoder entropy = this;
            cinfo.marker.discarded_bytes += entropy.bitstate.bits_left / 8;
            entropy.bitstate.bits_left = 0;
            if (!JPEGDecoder.read_restart_marker(cinfo)) {
                return false;
            }
            int ci = 0;
            while (ci < cinfo.comps_in_scan) {
                entropy.saved.last_dc_val[ci] = 0;
                ++ci;
            }
            entropy.saved.EOBRUN = 0;
            entropy.restarts_to_go = cinfo.restart_interval;
            if (cinfo.unread_marker == 0) {
                entropy.insufficient_data = false;
            }
            return true;
        }

        void start_pass_phuff_decoder(jpeg_decompress_struct cinfo) {
            phuff_entropy_decoder entropy = this;
            boolean is_DC_band = cinfo.Ss == 0;
            boolean bad = false;
            if (is_DC_band) {
                if (cinfo.Se != 0) {
                    bad = true;
                }
            } else {
                if (cinfo.Ss > cinfo.Se || cinfo.Se >= 64) {
                    bad = true;
                }
                if (cinfo.comps_in_scan != 1) {
                    bad = true;
                }
            }
            if (cinfo.Ah != 0 && cinfo.Al != cinfo.Ah - 1) {
                bad = true;
            }
            if (cinfo.Al > 13) {
                bad = true;
            }
            if (bad) {
                JPEGDecoder.error();
            }
            int ci = 0;
            while (ci < cinfo.comps_in_scan) {
                int cindex = cinfo.cur_comp_info[ci].component_index;
                int[] coef_bit_ptr = cinfo.coef_bits[cindex];
                if (!is_DC_band) {
                    int cfr_ignored_0 = coef_bit_ptr[0];
                }
                int coefi = cinfo.Ss;
                while (coefi <= cinfo.Se) {
                    int expected = coef_bit_ptr[coefi] < 0 ? 0 : coef_bit_ptr[coefi];
                    int cfr_ignored_1 = cinfo.Ah;
                    coef_bit_ptr[coefi] = cinfo.Al;
                    ++coefi;
                }
                ++ci;
            }
            ci = 0;
            while (ci < cinfo.comps_in_scan) {
                int tbl;
                jpeg_component_info compptr = cinfo.cur_comp_info[ci];
                if (is_DC_band) {
                    if (cinfo.Ah == 0) {
                        tbl = compptr.dc_tbl_no;
                        entropy.derived_tbls[tbl] = new d_derived_tbl();
                        JPEGDecoder.jpeg_make_d_derived_tbl(cinfo, true, tbl, entropy.derived_tbls[tbl]);
                    }
                } else {
                    tbl = compptr.ac_tbl_no;
                    entropy.derived_tbls[tbl] = new d_derived_tbl();
                    JPEGDecoder.jpeg_make_d_derived_tbl(cinfo, false, tbl, entropy.derived_tbls[tbl]);
                    entropy.ac_derived_tbl = entropy.derived_tbls[tbl];
                }
                entropy.saved.last_dc_val[ci] = 0;
                ++ci;
            }
            entropy.bitstate.bits_left = 0;
            entropy.bitstate.get_buffer = 0;
            entropy.insufficient_data = false;
            entropy.saved.EOBRUN = 0;
            entropy.restarts_to_go = cinfo.restart_interval;
        }
    }

    static final class savable_state {
        int EOBRUN;
        int[] last_dc_val = new int[4];

        savable_state() {
        }
    }
}

