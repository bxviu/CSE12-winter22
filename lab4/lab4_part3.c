extern void fill_bitmap(unsigned char background_color);
extern void draw_pixel(unsigned char line_color, int y, int x); 

void rectangle(unsigned char background_color, unsigned char line_color, int left, int top, int right, int bottom){

  fill_bitmap(background_color);
  int l = left;
  int t = top;
  while(l < right){
    draw_pixel(line_color, top, l);
    draw_pixel(line_color, bottom, l);
    l++;
    }
  while(t <= bottom){
    draw_pixel(line_color, t, left);
    draw_pixel(line_color, t, right);
    t++;
    }
  }

void main (void){

  unsigned char background_color = 0x6C;
  unsigned char line_color = 0x93;
  int left = 1;
  int top = 8;
  int right = 24;
  int bottom = 27;
  rectangle(background_color, line_color, left, top, right, bottom);
  
  }
