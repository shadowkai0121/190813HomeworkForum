<div id="editPost" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title text-center">編輯文章</h3>
            </div>

            {{-- Edit Post Form --}}
            <form id="editForm" class="form-horizontal" method="POST" action="" data-ajax='false'>
                @csrf
                <input id="postID" name='postID' type="text" value="" hidden>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-md-8 col-md-offset-2">
                            <span class="label label-warning">當前身分：<b>{{ $user }}</b></span>
                            <input class="form-control input-md" name='editTitle' id="editTitle" type="text" placeholder="Title is ..." required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-8 col-md-offset-2">
                            <textarea class="form-control input-md" name="editContent" id="editContent" cols="30" rows="10" placeholder="Write something..." required></textarea>
                        </div>
                    </div>   
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Post</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>