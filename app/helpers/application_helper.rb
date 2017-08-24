module ApplicationHelper

  def check_user_photo
  if current_user.user_photo.blank?
      "http://res.cloudinary.com/dpg1ipkol/image/upload/v1502308490/c_thumb,g_face/empresario_318-72886_gbwwol.jpg"
    else
      cl_image_path(current_user.user_photo, width: 800, height: 900, crop: :thumb, gravity: :face)
   end
  end
end



# <%= cl_image_tag("face_top.jpg", :width =>100, :height => 100,
#  :crop => :thumb, :gravity => :face) %>
# http://res.cloudinary.com/demo/image/upload/w_100,h_100,c_thumb,g_face/face_top.jpg
